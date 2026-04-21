# customer.py
# handles customer lookup and adding new customers
# this is used during both the purchase flow (acquisition specialist finds a seller)
# and the sale flow (sales agent finds a buyer)

from flask import Blueprint, redirect, render_template, request, session, url_for
from app.auth import login_required
from app.db import get_db

customer_bp = Blueprint("customer", __name__, url_prefix="/customer")


# ------------------------------------------------------------------
# /customer/lookup  (GET and POST)
#
# GET  = first time on the page, coming from the Acquisition Specialist
#        landing page or the Sales Agent Vehicle Detail page.
#        Just show the empty search form with no results yet.
#
# POST = user submitted the search form. Read the form, run the query,
#        and re-render the template with either the customer info (found)
#        or a "not found" message. The search form stays visible so they
#        can try again if needed.

@customer_bp.route("/lookup", methods=["GET", "POST"])
@login_required
def lookup():

    if request.method == "GET":
        return render_template("customer_lookup.html",
            customer=None,          # no customer found yet
            not_found=False,        # no search performed yet
            search_type="ssn",      # default radio button selection
            search_value="",        # empty search field
        )

    # handle the POST (search form submission)

    search_type = request.form["search_type"]   # radio button: "ssn" or "tax_id"
    search_value = request.form["search_value"]

    db = get_db()
    cursor = db.cursor(dictionary=True)

    # these are the SQL queries from Phase 2
    # we check search_type (the radio button) to know whether to search
    # by SSN (IndividualCustomer) or Tax ID (BusinessCustomer)
    # we use a JOIN so we get all the customer info back in one query
    # if no match is found, fetchone() will return None
    if search_type == "ssn":
        cursor.execute("""
            SELECT c.customer_id, ic.first_name, ic.last_name,
                   c.phone_number, c.email, c.street, c.city,
                   c.state, c.postal_code
            FROM Customer c
            JOIN IndividualCustomer ic ON c.customer_id = ic.customer_id
            WHERE ic.ssn = %s
        """, (search_value,))
    else:
        cursor.execute("""
            SELECT c.customer_id, bc.business_name,
                   c.phone_number, c.email, c.street, c.city,
                   c.state, c.postal_code
            FROM Customer c
            JOIN BusinessCustomer bc ON c.customer_id = bc.customer_id
            WHERE bc.tax_id = %s
        """, (search_value,))

    row = cursor.fetchone()

    if row:
        # found a match - build a dict for the template to display
        # name is different depending on individual vs business
        if search_type == "ssn":
            name = row["first_name"] + " " + row["last_name"]
        else:
            name = row["business_name"]

        customer = {
            "customer_id": row["customer_id"],
            "name": name,
            "phone_number": row["phone_number"],
            "email": row["email"],
            "street": row["street"],
            "city": row["city"],
            "state": row["state"],
            "postal_code": row["postal_code"],
        }
        return render_template("customer_lookup.html",
            customer=customer,      # template will show the customer info section
            not_found=False,
            search_type=search_type,
            search_value=search_value,
        )
    else:
        return render_template("customer_lookup.html",
            customer=None,          # no customer to show
            not_found=True,         # template will show "not found" + new customer form
            search_type=search_type,
            search_value=search_value,
        )


# ------------------------------------------------------------------
# /customer/confirm  (POST)
#
# user clicked "confirm" on an existing customer from the search results
# save their ID to the session and redirect to the next step
# where we go depends on whether we're in a purchase or sale flow
# (customer_context was set in the session by the caller)

@customer_bp.route("/confirm", methods=["POST"])
@login_required
def confirm():
    customer_id = request.form["customer_id"]

    session["customer_id"] = customer_id

    if session["customer_context"] == "purchase":
        return redirect(url_for("vehicle.add_vehicle"))
    else:
        return redirect(url_for("sale.confirm", vin=session["sale_vin"]))


# ------------------------------------------------------------------
# /customer/save  (POST)
#
# user filled out the new customer form (shown when search finds nothing)
# insert the new customer into the database then continue to the next step
#
# the database uses table inheritance - every customer goes into Customer first,
# then into either IndividualCustomer or BusinessCustomer depending on type

@customer_bp.route("/save", methods=["POST"])
@login_required
def save():
    # read all the form fields
    customer_type = request.form["customer_type"]   # "individual" or "business"
    phone = request.form["phone_number"]
    email = request.form.get("email", "")           # email is optional
    street = request.form["street"]
    city = request.form["city"]
    state = request.form["state"]
    postal_code = request.form["postal_code"]

    # treat empty email as NULL in the database
    if email == "":
        email = None

    db = get_db()
    cursor = db.cursor()

    # insert into the parent Customer table first
    cursor.execute("""
        INSERT INTO Customer (phone_number, email, state, city, street, postal_code)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (phone, email, state, city, street, postal_code))

    customer_id = cursor.lastrowid  # MySQL gives us back the auto-generated ID

    # now insert into the right subtype table based on individual vs business
    if customer_type == "individual":
        ssn = request.form["ssn"]
        first_name = request.form["first_name"]
        last_name = request.form["last_name"]
        cursor.execute("""
            INSERT INTO IndividualCustomer (customer_id, ssn, first_name, last_name)
            VALUES (%s, %s, %s, %s)
        """, (customer_id, ssn, first_name, last_name))
    else:
        tax_id = request.form["tax_id"]
        business_name = request.form["business_name"]
        contact_title = request.form["primary_contact_title"]
        contact_first = request.form["primary_contact_first_name"]
        contact_last = request.form["primary_contact_last_name"]
        cursor.execute("""
            INSERT INTO BusinessCustomer
                (customer_id, tax_id, business_name, primary_contact_title,
                 primary_contact_first_name, primary_contact_last_name)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (customer_id, tax_id, business_name, contact_title, contact_first, contact_last))

    db.commit()

    # build the customer dict from the form data we already have
    # so we can show the "Customer Found" section in the template
    if customer_type == "individual":
        name = first_name + " " + last_name
    else:
        name = business_name

    customer = {
        "customer_id": customer_id,
        "name": name,
        "phone_number": phone,
        "email": email,
        "street": street,
        "city": city,
        "state": state,
        "postal_code": postal_code,
    }

    # show the lookup page again with the new customer pre-filled in Section 2
    # the user can now click "Confirm Customer" just like if they had found them via search
    return render_template("customer_lookup.html",
        customer=customer,
        not_found=False,
        search_type=customer_type,
        search_value="",
    )


# ------------------------------------------------------------------
# DEBUG ROUTES - TODO: remove before demo!
#
# these let us fake the session state so we can test the confirm
# and save routes without going through the full purchase/sale flow
# just hit these URLs manually to set up the session for testing

@customer_bp.route("/debug/set_customer_context/<context>")
def set_customer_context(context):
    session["customer_context"] = context
    return f"Set customer_context to {context}"

@customer_bp.route("/debug/set_sale_vin/<vin>")
def set_sale_vin(vin):
    session["sale_vin"] = vin
    return f"Set sale_vin to {vin}"
