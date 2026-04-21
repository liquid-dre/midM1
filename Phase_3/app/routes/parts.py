# Parts Blueprint
from flask import Blueprint, redirect, render_template, request, session, url_for, flash
from app.auth import role_required
from app.db import get_db

parts_bp = Blueprint("parts", __name__, url_prefix="/parts")

@parts_bp.route("/lookup/<vin>", methods=["GET", "POST"])
@role_required("is_acquisition_specialist")
@role_required("is_owner")
def lookup(vin):
    db = get_db()
    cursor = db.cursor(dictionary=True)

    #Check if the vehicle has been already sold
    cursor.execute("SELECT vin FROM Sale WHERE vin = %s", (vin,))
    sold = cursor.fetchone()
    
    if sold:
        flash('Vehicle is already sold, no changes to parts are allowed.', 'error')
        return redirect(url_for('vehicle.detail', vin=vin))
    
    #Get all the parts for this particular vin and list them
    cursor.execute("""SELECT PartsOrder.parts_order_number, PartsOrder.order_ordinal, Vendor.vendor_name, 
                    PartsOrderLine.vendor_part_number, PartsOrderLine.description, PartsOrderLine.status, 
                    PartsOrderLine.quantity, PartsOrderLine.unit_price
                    FROM PartsOrder
                    INNER JOIN PartsOrderLine ON PartsOrder.parts_order_number = PartsOrderLine.parts_order_number
                    INNER JOIN Vendor ON Vendor.vendor_name = PartsOrder.vendor_name
                    WHERE PartsOrder.vin = %s
                    ORDER BY PartsOrder.order_ordinal ASC""", (vin,))

    rows = cursor.fetchall()

    #Vendors for dropdown
    cursor.execute("SELECT vendor_name FROM Vendor")
    vendor_dropdown = cursor.fetchall()

    # Get the next order ordinal, which we need to auto fill oder_ordinal and parts_order_number
    cursor.execute("SELECT IFNULL(MAX(order_ordinal), 0) + 1 AS ordinal FROM PartsOrder WHERE vin = %s", (vin,))
    next_ordinal = int(cursor.fetchone()["ordinal"])
    next_parts = f"{vin}-{next_ordinal:03d}"

    cursor.close()
    return render_template("add_parts_order.html", orders=rows, vin=vin, vendors=vendor_dropdown, next_ordinal=next_ordinal, next_parts=next_parts)

@parts_bp.route("/save/<vin>", methods=["POST"])
@role_required("is_acquisition_specialist")
@role_required("is_owner")
def save(vin):
    db = get_db()
    cursor = db.cursor(dictionary=True)

    if 'clear' in request.form:
        cursor.close()
        return redirect(url_for('vendor.lookup', vin=vin))
    
    if 'new_vendor' in request.form:
        session['vehicle_vin'] = vin
        cursor.close()
        return redirect(url_for('vendor.lookup'))

    if 'add_part' in request.form:
        vendor_names = request.form.getlist('vendor_name[]')
        vendor_part_numbers = request.form.getlist('vendor_part_number[]')
        quantities = request.form.getlist('quantity[]')
        prices = request.form.getlist('unit_price[]')
        descriptions = request.form.getlist('description[]')

        if not any(vendor_names) or not any(vendor_part_numbers) or not any(quantities) or not any(prices):
            flash('Please fill in all details for part lines', 'error')
            cursor.close()
            return redirect(url_for('parts.lookup', vin=vin))
        
        # Get the ordinal, which we need to auto fill the next order ordinal and the parts_order_number
        cursor.execute("SELECT IFNULL(MAX(order_ordinal), 0) + 1 AS ordinal FROM PartsOrder WHERE vin = %s", (vin,))
        next_ordinal = int(cursor.fetchone()["ordinal"])
        next_parts = f"{vin}-{next_ordinal:03d}"

        # Collected information: order_ordinal, vendor_name
        cursor.execute("""INSERT INTO PartsOrder (parts_order_number, order_ordinal, vin, vendor_name)
                       VALUES (%s, %s, %s, %s)""",
                       (next_parts, next_ordinal, vin, vendor_names[0]))
        
        for i in range(len(vendor_part_numbers)):

            # Collected information: vendor_part_number, vendor_name, vendor_part_number, status, quantity, unit_price, description
            cursor.execute("""INSERT INTO PartsOrderLine (vendor_part_number, `status`, quantity, unit_price, parts_order_number, `description`)
                        VALUES (%s, %s, %s, %s, %s, %s)""", 
                        (vendor_part_numbers[i],
                        'Ordered',
                        quantities[i],
                        prices[i],
                        next_parts,
                        descriptions[i]))

        db.commit()
        cursor.close()
        flash("Part added successfully!", "success")
        return redirect(url_for('parts.lookup', vin=vin))
    
    cursor.close()
    return redirect(url_for('parts.lookup', vin=vin))
