from flask import (
    Blueprint, flash, g, redirect, render_template, session, request, url_for
)
from werkzeug.exceptions import abort
from app.db import get_db
from datetime import date, datetime
from decimal import Decimal, InvalidOperation
import re

vehicle_bp = Blueprint("vehicle", __name__)

# Fixed enum constants for add_vehicle form dropdowns.
CONDITIONS  = ['Excellent', 'Very Good', 'Good', 'Fair', 'Rough']
FUEL_TYPES  = ['Gas', 'Diesel', 'Natural Gas', 'Hybrid', 'Plugin Hybrid', 'Battery', 'Fuel Cell']
DRIVETRAINS = ['4WD', 'AWD', 'FWD', 'RWD']


def _fetch_seller_name(customer_id):
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("""
        SELECT COALESCE(
            CONCAT(ic.first_name, ' ', ic.last_name),
            bc.business_name
        ) AS seller_name
        FROM Customer c
        LEFT JOIN IndividualCustomer ic ON ic.customer_id = c.customer_id
        LEFT JOIN BusinessCustomer   bc ON bc.customer_id = c.customer_id
        WHERE c.customer_id = %s
    """, (customer_id,))
    row = cursor.fetchone()
    cursor.close()
    return row['seller_name'] if row else None


def _fetch_vehicle_types():
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT type_name FROM VehicleType ORDER BY type_name ASC")
    rows = cursor.fetchall()
    cursor.close()
    return [r['type_name'] for r in rows]


def _fetch_manufacturers():
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT manufacturer_name FROM Manufacturer ORDER BY manufacturer_name ASC")
    rows = cursor.fetchall()
    cursor.close()
    return [r['manufacturer_name'] for r in rows]

def _fetch_colors():
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT color_name FROM Color ORDER BY color_name ASC")
    rows = cursor.fetchall()
    cursor.close()
    return [r['color_name'] for r in rows]

# Helper: fetch basic vehicle info.
def _fetch_vehicle(vin):
    """
    Fetch basic vehicle details for a given VIN.
    Visible to all users including public (unauthenticated).
    Returns a dict or None.
    """
    db = get_db()
    cursor = db.cursor(dictionary=True)
 
    query = """
        SELECT
            v.vin,
            v.model,
            v.`year`,
            v.`condition`,
            v.fuel_type,
            v.drive_train,
            v.horse_power,
            v.notes,
            v.manufacturer_name,
            v.vehicle_type_name,
            GROUP_CONCAT(
                DISTINCT c.color_name
                ORDER BY c.color_name
                SEPARATOR ', '
            ) AS colors,
            (
                1.25 * p.purchase_price
                + 1.10 * COALESCE(pc.total_parts_cost, 0)
            ) AS sale_price
        FROM Vehicle v
        LEFT JOIN VehicleColor vc
            ON v.vin = vc.vin
        LEFT JOIN Color c
            ON vc.color_name = c.color_name
        LEFT JOIN Purchase p
            ON p.vin = v.vin
        LEFT JOIN (
            SELECT
                po.vin,
                SUM(pol.unit_price * pol.quantity) AS total_parts_cost
            FROM PartsOrder po
            JOIN PartsOrderLine pol
                ON po.parts_order_number = pol.parts_order_number
            GROUP BY po.vin
        ) pc ON pc.vin = v.vin
        WHERE v.vin = %s
        GROUP BY
            v.vin, v.model, v.`year`, v.`condition`, v.fuel_type,
            v.drive_train, v.horse_power, v.notes,
            v.manufacturer_name, v.vehicle_type_name, p.purchase_price
    """
 
    cursor.execute(query, (vin,))
    row = cursor.fetchone()
    cursor.close()
    return row 

# Helper: check if the vehicle is sold.
def _check_is_sold(vin):
    """
    Returns True if the vehicle has been sold (a Sale record exists).
    """
    db = get_db()
    cursor = db.cursor()
    cursor.execute("SELECT vin FROM Sale WHERE vin = %s", (vin,))
    row = cursor.fetchone()
    cursor.close()
    return row is not None  # True = sold, False = not yet sold

# Helper: check if the vehicle has any pending (non-installed) parts.
def _check_has_pending(vin):
    """
    Returns True if the vehicle has any parts that are not yet installed.
    """
    db = get_db()
    cursor = db.cursor(dictionary=True)
    query = """
        SELECT COUNT(*) AS pending_parts
        FROM PartsOrderLine pol
        INNER JOIN PartsOrder po
            ON po.parts_order_number = pol.parts_order_number
        WHERE po.vin = %s
          AND pol.`status` != 'Installed'
    """
    cursor.execute(query, (vin,))
    row = cursor.fetchone()
    cursor.close()
    return row['pending_parts'] > 0  # True = has pending parts 

# Helper: fetch purchase info + acquisition specialist name.  
def _fetch_purchase(vin):
    """
    Fetch purchase details and acquisition specialist name for a vehicle.
    Used by AcquisitionSpecialist, OperatingManager, and Owner views.
    Returns a dict or None.
    """
    db = get_db()
    cursor = db.cursor(dictionary=True)
    
    # JOIN StaffUser to get the acquisition specialist's first/last name.
    query = """
        SELECT
            p.purchase_price,
            p.purchase_date,
            p.seller_identifier,
            p.handler_username,
            su.first_name AS specialist_first_name,
            su.last_name  AS specialist_last_name
        FROM Purchase p
        JOIN StaffUser su
            ON su.username = p.handler_username
        WHERE p.vin = %s
    """
    cursor.execute(query, (vin,))
    row = cursor.fetchone()
    cursor.close()
    return row  # dict with purchase + specialist fields, or None 


# Helper: fetch all parts order lines for a vehicle.

def _fetch_parts_lines(vin):
    """
    Fetch all parts order lines for a vehicle, ordered by order_ordinal
    then vendor_part_number.
    Returns a list of dicts (may be empty if no parts ordered yet).
    """
    db = get_db()
    cursor = db.cursor(dictionary=True)
 
    query = """
        SELECT
            po.parts_order_number,
            po.order_ordinal,
            po.vendor_name,
            pol.vendor_part_number,
            pol.description,
            pol.unit_price,
            pol.quantity,
            pol.status,
            (pol.unit_price * pol.quantity) AS line_total
        FROM PartsOrder po
        JOIN PartsOrderLine pol
            ON po.parts_order_number = pol.parts_order_number
        WHERE po.vin = %s
        ORDER BY po.order_ordinal, pol.vendor_part_number
    """
    cursor.execute(query, (vin,))
    rows = cursor.fetchall()
    cursor.close()
    return rows  # list of dicts, [] if no parts ordered


# Helper: fetch total parts cost for a vehicle. 
def _fetch_total_parts_cost(vin):
    """
    Fetch the total cost of all parts ordered for a vehicle.
    Returns Decimal or 0. Never None.
    """
    db = get_db()
    cursor = db.cursor(dictionary=True)
    query = """
        SELECT
            COALESCE(SUM(pol.unit_price * pol.quantity), 0) AS total_parts_cost
        FROM PartsOrder po
        JOIN PartsOrderLine pol
            ON po.parts_order_number = pol.parts_order_number
        WHERE po.vin = %s
    """
    cursor.execute(query, (vin,))
    row = cursor.fetchone()
    cursor.close()
    return row['total_parts_cost'] if row else 0  

# Helper: fetch seller information.
def _fetch_seller(vin):
    """
    Fetch seller (the customer who sold the vehicle to Midtown Motors)
    contact info for the OperatingManager and Owner views.
    Returns a dict or None.
    SSN and tax_id are excluded at the SQL level per spec.
    """
    db = get_db()
    cursor = db.cursor(dictionary=True)
 
    # Abstract code 1.3 — seller info query (Operating Manager section).
    # Purchase.seller_identifier stores the customer_id of the seller.
    # LEFT JOIN both subtypes; COALESCE picks the non-NULL name.
    query = """
        SELECT
            c.phone_number,
            c.email,
            c.street,
            c.city,
            c.state,
            c.postal_code,
            COALESCE(
                CONCAT(ic.first_name, ' ', ic.last_name),
                bc.business_name
            ) AS seller_name
        FROM Purchase p
        JOIN Customer c
            ON c.customer_id = p.seller_identifier
        LEFT JOIN IndividualCustomer ic
            ON ic.customer_id = c.customer_id
        LEFT JOIN BusinessCustomer bc
            ON bc.customer_id = c.customer_id
        WHERE p.vin = %s
    """
    cursor.execute(query, (vin,))
    row = cursor.fetchone()
    cursor.close()
    return row  # dict with seller info, or None

# Helper: fetch sale + buyer + sales agent information.
def _fetch_sale(vin):
    """
    Fetch sale details, buyer contact info, and sales agent name.
    Only called when the vehicle is confirmed as sold.
    Returns a dict or None.
    SSN and tax_id are excluded at the SQL level per spec.
    """
    db = get_db()
    cursor = db.cursor(dictionary=True)
 
    # Abstract code 1.3 — sale + buyer + agent query (Operating Manager section).
    # JOIN StaffUser to get sales agent first/last name.
    # JOIN Customer + LEFT JOIN both subtypes to resolve buyer name.
    query = """
        SELECT
            s.sale_date,
            su.first_name        AS agent_first_name,
            su.last_name         AS agent_last_name,
            c.phone_number       AS buyer_phone,
            c.email              AS buyer_email,
            c.street             AS buyer_street,
            c.city               AS buyer_city,
            c.state              AS buyer_state,
            c.postal_code        AS buyer_postal_code,
            COALESCE(
                CONCAT(ic.first_name, ' ', ic.last_name),
                bc.business_name
            ) AS buyer_name
        FROM Sale s
        JOIN StaffUser su
            ON su.username = s.sales_agent_username
        JOIN Customer c
            ON c.customer_id = s.buyer_id
        LEFT JOIN IndividualCustomer ic
            ON ic.customer_id = c.customer_id
        LEFT JOIN BusinessCustomer bc
            ON bc.customer_id = c.customer_id
        WHERE s.vin = %s
    """
    cursor.execute(query, (vin,))
    row = cursor.fetchone()
    cursor.close()
    return row  # dict with sale + buyer + agent fields, or None  

# Main route: GET /vehicle/<vin> 
@vehicle_bp.route('/vehicle/<vin>')
def detail(vin):
    """
    Vehicle detail page — renders vehicle_detail.html.
 
    Fetches data progressively based on the logged-in user's role.
    Public users receive only basic vehicle info.
    Privileged users receive additional data per their role.
    """
 
    # ------------------------------------------------------------------
    # Step 1: Read user context directly from session (set by auth.py on login).
    # ------------------------------------------------------------------
    logged_in                 = 'username' in session
    is_acquisition_specialist = bool(session.get('is_acquisition_specialist', False))
    is_sales_agent            = bool(session.get('is_sales_agent', False))
    is_operating_manager      = bool(session.get('is_operating_manager', False))
    is_owner                  = bool(session.get('is_owner', False))

    # ------------------------------------------------------------------
    # Step 2: Fetch basic vehicle info.
    # ------------------------------------------------------------------
    vehicle = _fetch_vehicle(vin)
 
    # ------------------------------------------------------------------
    # Step 3: 404 if VIN does not exist in the database.
    # Prevents the page from rendering with None data.
    # ------------------------------------------------------------------
    if vehicle is None:
        abort(404)
 
    # ------------------------------------------------------------------
    # Step 4: Compute is_sold and has_pending flags.
    # ------------------------------------------------------------------
    is_sold     = _check_is_sold(vin)
    has_pending = _check_has_pending(vin)
 
    # ------------------------------------------------------------------
    # Step 5: Initialize role-specific data to None.
    # ------------------------------------------------------------------
    purchase         = None   # dict: purchase price, date, specialist name
    parts_lines      = []     # list of dicts: one per PartsOrderLine
    total_parts_cost = 0      # Decimal: sum of all parts costs
    seller           = None   # dict: seller contact info (no SSN/tax_id)
    sale             = None   # dict: sale date, buyer info, agent name
 
    # Step 6: Fetch AcquisitionSpecialist data.
    if logged_in and (is_acquisition_specialist or is_operating_manager or is_owner):
        purchase         = _fetch_purchase(vin)
        parts_lines      = _fetch_parts_lines(vin)
        total_parts_cost = _fetch_total_parts_cost(vin)

    # Step 7: Fetch OperatingManager data.
    if logged_in and (is_operating_manager or is_owner):
 
        # Fetch seller info — always needed for OM/Owner detail view.
        seller = _fetch_seller(vin)
 
        # Fetch sale + buyer info — ONLY if the vehicle has been sold.
        if is_sold:
            sale = _fetch_sale(vin)
 
    # Step 8: Render the template with all collected data.
    return render_template(
        'vehicle_detail.html',
 
        # Core vehicle data — visible to all users
        vehicle = vehicle,
 
        # Boolean flags — used by template to conditionally show Sell
        # Vehicle button and sale/buyer info block
        is_sold = is_sold,
        has_pending = has_pending,
 
        # AcquisitionSpecialist + OperatingManager + Owner data
        purchase = purchase,          # None if not fetched
        parts_lines = parts_lines,       # [] if not fetched or no parts
        total_parts_cost = total_parts_cost,  # 0 if not fetched or no parts
 
        # OperatingManager + Owner data
        seller = seller,            # None if not fetched
        sale = sale,              # None if not fetched or not sold
 
    )                         
    

# ══════════════════════════════════════════════════════════════════════
# Route: GET + POST /vehicle/add  — Add Vehicle
# ══════════════════════════════════════════════════════════════════════
 
@vehicle_bp.route('/vehicle/add', methods=['GET', 'POST'])
def add_vehicle():
    """
    Add Vehicle page — renders add_vehicle.html on GET,
    processes the form on POST.
 
    Pre-condition: The user must be logged in as an AcquisitionSpecialist
    or Owner. The customer flow (Lookup/Add Customer) must have already
    set session['customer_id'] to the seller's customer_id.
 
    On successful POST:
      - Inserts into Vehicle, VehicleColor (one row per color), and Purchase.
      - Redirects to the vehicle detail page for the newly added VIN.
 
    On validation failure:
      - Re-renders the form with errors dict and previously entered values.
    """
 
    # ------------------------------------------------------------------
    # Guard: only AcquisitionSpecialist or Owner may add vehicles.
    # ------------------------------------------------------------------
    if 'username' not in session or not (
        session.get('is_acquisition_specialist') or session.get('is_owner')
    ):
        abort(403)
 
    # ------------------------------------------------------------------
    # Guard: a seller (customer_id) must already be selected via the
    # Lookup/Add Customer flow and stored in the session.
    # ------------------------------------------------------------------
    customer_id = session.get('customer_id')
    if not customer_id:
        flash('Please select a seller before adding a vehicle.')
        return redirect(url_for('search.index'))
 
    # ------------------------------------------------------------------
    # Resolve seller display name for the form header.
    # ------------------------------------------------------------------
    seller_name = _fetch_seller_name(customer_id) or '(unknown)'
 
    # ------------------------------------------------------------------
    # Fetch dropdown / checkbox options from the database.
    # ------------------------------------------------------------------
    vehicle_types  = _fetch_vehicle_types()
    manufacturers  = _fetch_manufacturers()
    colors         = _fetch_colors()
 
    # Maximum allowed model year per spec: current year + 1.
    max_model_year = date.today().year + 1
 
    # ------------------------------------------------------------------
    # GET — just render the empty form.
    # ------------------------------------------------------------------
    if request.method == 'GET':
        return render_template(
            'add_vehicle.html',
            seller_name     = seller_name,
            customer_id     = customer_id,
            vehicle_types   = vehicle_types,
            conditions      = CONDITIONS,
            manufacturers   = manufacturers,
            fuel_types      = FUEL_TYPES,
            drivetrains     = DRIVETRAINS,
            colors          = colors,
            selected_colors = [],
            max_model_year  = max_model_year,
            today           = date.today().isoformat(),
            errors          = None,
            error           = None,
        )
 
    # ------------------------------------------------------------------
    # POST — validate and insert.
    # ------------------------------------------------------------------
 
    # Collect form values.
    vin               = request.form.get('vin', '').strip()
    vehicle_type_name = request.form.get('vehicle_type_name', '').strip()
    condition         = request.form.get('condition', '').strip()
    manufacturer      = request.form.get('manufacturer', '').strip()
    model             = request.form.get('model', '').strip()
    year_str          = request.form.get('year', '').strip()
    fuel_type         = request.form.get('fuel_type', '').strip()
    drive_train       = request.form.get('drive_train', '').strip()
    selected_colors   = request.form.getlist('colors')
    horse_power_str   = request.form.get('horse_power', '').strip()
    purchase_price_str = request.form.get('purchase_price', '').strip()
    purchase_date_str = request.form.get('purchase_date', '').strip()
    notes             = request.form.get('notes', '').strip() or None
 
    errors = {}
 
    # ── VIN validation ────────────────────────────────────────
    if not vin:
        errors['vin'] = 'VIN is required.'
    elif len(vin) > 17:
        errors['vin'] = 'VIN must be at most 17 characters.'
    elif not re.match(r'^[A-Za-z0-9]+$', vin):
        errors['vin'] = 'VIN must be alphanumeric.'
 
    # ── Vehicle Type validation ───────────────────────────────
    if not vehicle_type_name:
        errors['vehicle_type_name'] = 'Vehicle type is required.'
    elif vehicle_type_name not in vehicle_types:
        errors['vehicle_type_name'] = 'Invalid vehicle type selected.'
 
    # ── Condition validation ──────────────────────────────────
    if not condition:
        errors['condition'] = 'Condition is required.'
    elif condition not in CONDITIONS:
        errors['condition'] = 'Invalid condition selected.'
 
    # ── Manufacturer validation ───────────────────────────────
    if not manufacturer:
        errors['manufacturer'] = 'Manufacturer is required.'
    elif manufacturer not in manufacturers:
        errors['manufacturer'] = 'Invalid manufacturer selected.'
 
    # ── Model validation ──────────────────────────────────────
    if not model:
        errors['model'] = 'Model name is required.'
 
    # ── Year validation ───────────────────────────────────────
    #   Spec: four-digit year with century, cannot exceed current year + 1.
    if not year_str:
        errors['year'] = 'Vehicle model year is required.'
    elif not re.match(r'^\d{4}$', year_str):
        errors['year'] = 'Year must be a four-digit number including century (e.g. 2024).'
    else:
        year_int = int(year_str)
        if year_int > max_model_year:
            errors['year'] = (
                f'Model year cannot exceed {max_model_year}.'
            )
 
    # ── Fuel Type validation ──────────────────────────────────
    if not fuel_type:
        errors['fuel_type'] = 'Fuel type is required.'
    elif fuel_type not in FUEL_TYPES:
        errors['fuel_type'] = 'Invalid fuel type selected.'
 
    # ── Drivetrain validation ─────────────────────────────────
    if not drive_train:
        errors['drive_train'] = 'Drivetrain is required.'
    elif drive_train not in DRIVETRAINS:
        errors['drive_train'] = 'Invalid drivetrain selected.'
 
    # ── Color(s) validation ───────────────────────────────────
    if not selected_colors:
        errors['colors'] = 'At least one color must be selected.'
    else:
        valid_colors = set(colors)
        for c in selected_colors:
            if c not in valid_colors:
                errors['colors'] = f'Invalid color selected: {c}.'
                break
 
    # ── Horsepower validation ─────────────────────────────────
    #   Spec: whole number (positive integer).
    if not horse_power_str:
        errors['horse_power'] = 'Horsepower is required.'
    elif not horse_power_str.isdigit() or int(horse_power_str) <= 0:
        errors['horse_power'] = 'Horsepower must be a positive whole number.'
 
    # ── Purchase Price validation ─────────────────────────────
    if not purchase_price_str:
        errors['purchase_price'] = 'Purchase price is required.'
    else:
        try:
            purchase_price = Decimal(purchase_price_str)
            if purchase_price <= 0:
                errors['purchase_price'] = 'Purchase price must be greater than zero.'
        except InvalidOperation:
            errors['purchase_price'] = 'Purchase price must be a valid number (e.g. 15000.00).'
 
    # ── Purchase Date validation ──────────────────────────────
    if not purchase_date_str:
        errors['purchase_date'] = 'Purchase date is required.'
    else:
        try:
            purchase_date = datetime.strptime(purchase_date_str, '%Y-%m-%d').date()
        except ValueError:
            errors['purchase_date'] = 'Purchase date must be a valid date.'
 
    # ── VIN uniqueness check (only if VIN passed format checks) ─
    # Abstract code 1.7: SELECT vin FROM Vehicle WHERE vin = '$vin'
    if 'vin' not in errors and vin:
        db = get_db()
        cursor = db.cursor()
        cursor.execute("SELECT vin FROM Vehicle WHERE vin = %s;", (vin,))
        if cursor.fetchone() is not None:
            errors['vin'] = 'A vehicle with this VIN already exists.'
        cursor.close()
 
    # ------------------------------------------------------------------
    # If any validation errors, re-render the form with error messages.
    # ------------------------------------------------------------------
    if errors:
        return render_template(
            'add_vehicle.html',
            seller_name     = seller_name,
            customer_id     = customer_id,
            vehicle_types   = vehicle_types,
            conditions      = CONDITIONS,
            manufacturers   = manufacturers,
            fuel_types      = FUEL_TYPES,
            drivetrains     = DRIVETRAINS,
            colors          = colors,
            selected_colors = selected_colors,
            max_model_year  = max_model_year,
            today           = date.today().isoformat(),
            errors          = errors,
            error           = None,
        )
 
    # ------------------------------------------------------------------
    # All validations passed — insert into the database.
    # ------------------------------------------------------------------
    db = get_db()
    cursor = db.cursor()
 
    try:
        # 1) Insert Vehicle record.
        cursor.execute(
            """
            INSERT INTO Vehicle (
                vin, model, `year`, `condition`, fuel_type,
                drive_train, horse_power, notes,
                manufacturer_name, vehicle_type_name
            )
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s);
            """,
            (
                vin, model, int(year_str), condition, fuel_type,
                drive_train, int(horse_power_str), notes,
                manufacturer, vehicle_type_name,
            ),
        )
 
        # 2) Insert one VehicleColor row per selected color.
        for color_name in selected_colors:
            cursor.execute(
                "INSERT INTO VehicleColor (vin, color_name) VALUES (%s, %s);",
                (vin, color_name),
            )
 
        # 3) Insert Purchase record linking vehicle, seller, and specialist.
        cursor.execute(
            """
            INSERT INTO Purchase (
                vin, purchase_price, purchase_date,
                seller_identifier, handler_username
            )
            VALUES (%s, %s, %s, %s, %s);
            """,
            (
                vin,
                purchase_price_str,
                purchase_date_str,
                customer_id,
                session['username'],
            ),
        )
 
        db.commit()
 
    except Exception as e:
        db.rollback()
        # Re-render with a generic DB error.
        return render_template(
            'add_vehicle.html',
            seller_name     = seller_name,
            customer_id     = customer_id,
            vehicle_types   = vehicle_types,
            conditions      = CONDITIONS,
            manufacturers   = manufacturers,
            fuel_types      = FUEL_TYPES,
            drivetrains     = DRIVETRAINS,
            colors          = colors,
            selected_colors = selected_colors,
            max_model_year  = max_model_year,
            today           = date.today().isoformat(),
            errors          = None,
            error           = f'Database error: {e}',
        )
    finally:
        cursor.close()
 
    # ------------------------------------------------------------------
    # Success — clear the customer_id from the session (the purchase
    # flow is complete) and redirect to the vehicle detail page.
    # Abstract code 1.7: "Go to Vehicle Details form for the new Vehicle,
    # passing '$vin'."
    # ------------------------------------------------------------------
    session.pop('customer_id', None)
    return redirect(url_for('vehicle.detail', vin=vin))


# ══════════════════════════════════════════════════════════════════════
# Route: POST /vehicle/update-part-status/<parts_order_number>/<vendor_part_number>
# Updates a parts order line status (Ordered → Received → Installed).
# Forward-only: will not allow moving backwards in the sequence.
# ══════════════════════════════════════════════════════════════════════

_STATUS_ORDER = ['Ordered', 'Received', 'Installed']

@vehicle_bp.route('/vehicle/update-part-status/<parts_order_number>/<vendor_part_number>', methods=['POST'])
def update_part_status(parts_order_number, vendor_part_number):
    new_status = request.form.get("new_status")
    vin        = request.form.get("vin")

    if new_status not in _STATUS_ORDER:
        return redirect(url_for("vehicle.detail", vin=vin))

    db     = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT status FROM PartsOrderLine "
        "WHERE parts_order_number = %s AND vendor_part_number = %s",
        (parts_order_number, vendor_part_number)
    )
    row = cursor.fetchone()

    if row and _STATUS_ORDER.index(new_status) > _STATUS_ORDER.index(row["status"]):
        cursor.execute(
            "UPDATE PartsOrderLine SET status = %s "
            "WHERE parts_order_number = %s AND vendor_part_number = %s",
            (new_status, parts_order_number, vendor_part_number)
        )
        db.commit()

    cursor.close()
    return redirect(url_for("vehicle.detail", vin=vin))
