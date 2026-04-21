# Vendor Blueprint
from flask import Blueprint, redirect, render_template, request, session, url_for, flash
from app.auth import role_required
from app.db import get_db

vendor_bp = Blueprint("vendor", __name__, url_prefix="/vendor")

@vendor_bp.route("/lookup", methods=["GET", "POST"])
@role_required("is_acquisition_specialist")
@role_required("is_owner")
def lookup():
    db = get_db()
    cursor = db.cursor(dictionary=True)

    vin = session.get('vehicle_vin')
    
    # Check when a button is clicked and perform actions based on that input: search for a vendor details, add a vendor, or simply go back to parts to Add Parts to Order form
    if request.method == "POST":
        new_vendor_data = {
            'vendor_name': request.form.get('vendor_name', '').strip(),
            'street': request.form.get('street', '').strip(),
            'city': request.form.get('city', '').strip(),
            'state': request.form.get('state', '').strip(),
            'postal_code': request.form.get('postal_code', '').strip(),
            'phone_number': request.form.get('phone_number', '').strip()
        }

        if 'search' in request.form:
            
            if not new_vendor_data['vendor_name']:
                flash("Vendor name is required", "error")
                cursor.close()
                return redirect(url_for('vendor.lookup'))
        
            cursor.execute("""SELECT vendor_name, street, city, `state`, postal_code, phone_number
                            FROM Vendor
                            WHERE vendor_name LIKE %s""", (f"%{new_vendor_data['vendor_name']}%",))

            vendor = cursor.fetchone()

            if not vendor:
                flash("Vendor not found!", "error")
            
            cursor.close()
            return render_template("vendor_lookup.html", vendor=vendor, vin=vin)

        elif 'new_vendor' in request.form:

            if not new_vendor_data['vendor_name']:
                flash('Vendor name is required', 'error')
                cursor.close()
                return redirect(url_for('vendor.lookup'))

            cursor.execute("SELECT vendor_name FROM Vendor WHERE vendor_name = %s", (new_vendor_data['vendor_name'],))
            vendor_check = cursor.fetchone()

            if vendor_check:
                flash('Vendor already in database', 'error')
                cursor.close()
                return redirect(url_for('vendor.lookup'))

            cursor.execute("""INSERT INTO Vendor (vendor_name, street, city, `state`, postal_code, phone_number)
                        VALUES (%s, %s, %s, %s, %s, %s)""",
                        (new_vendor_data['vendor_name'],
                         new_vendor_data['street'],
                         new_vendor_data['city'],
                         new_vendor_data['state'],
                         new_vendor_data['postal_code'],
                         new_vendor_data['phone_number']))
            
            db.commit()
            cursor.close()
            
            flash("Vendor added successfully!", "success")
            return render_template("vendor_lookup.html", vendor=new_vendor_data, new_vendor=True, vin=vin)
        
        elif 'clear' in request.form:
            cursor.close()
            return redirect(url_for('vendor.lookup'))
    
    cursor.close()
    return render_template("vendor_lookup.html", vendor=None, new_vendor=False, vin=vin)
