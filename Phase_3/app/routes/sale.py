from flask import Blueprint, redirect, render_template, request, session, url_for
from datetime import date
from app.auth import login_required
from app.db import get_db

sale_bp = Blueprint("sale", __name__)


@sale_bp.route("/sale/lookup-customer/<vin>")
@login_required
def lookup_customer(vin):
    session['customer_context'] = 'sale'
    session['sale_vin'] = vin
    return redirect(url_for('customer.lookup'))


@sale_bp.route("/sale/confirm/<vin>", methods=["GET", "POST"])
@login_required
def confirm(vin):
    db = get_db()
    cursor = db.cursor(dictionary=True)

    # Fetch vehicle summary
    cursor.execute("""
        SELECT
            v.vin, v.year, v.manufacturer_name, v.model, v.condition,
            (
                1.25 * p.purchase_price
                + 1.10 * COALESCE(pc.total_parts_cost, 0)
            ) AS sale_price
        FROM Vehicle v
        JOIN Purchase p ON p.vin = v.vin
        LEFT JOIN (
            SELECT po.vin, SUM(pol.unit_price * pol.quantity) AS total_parts_cost
            FROM PartsOrder po
            JOIN PartsOrderLine pol ON po.parts_order_number = pol.parts_order_number
            GROUP BY po.vin
        ) pc ON pc.vin = v.vin
        WHERE v.vin = %s
    """, (vin,))
    vehicle = cursor.fetchone()

    if not vehicle:
        cursor.close()
        return redirect(url_for('vehicle.detail', vin=vin))

    # Fetch buyer info
    buyer_id = session.get('customer_id')
    cursor.execute("""
        SELECT
            c.customer_id,
            COALESCE(CONCAT(ic.first_name, ' ', ic.last_name), bc.business_name) AS name,
            c.phone_number, c.email, c.street, c.city, c.state, c.postal_code
        FROM Customer c
        LEFT JOIN IndividualCustomer ic ON ic.customer_id = c.customer_id
        LEFT JOIN BusinessCustomer bc ON bc.customer_id = c.customer_id
        WHERE c.customer_id = %s
    """, (buyer_id,))
    buyer = cursor.fetchone()
    cursor.close()

    if not buyer:
        return redirect(url_for('customer.lookup'))

    if request.method == "POST":
        sale_date = date.today().isoformat()
        agent_username = session['username']

        cursor = db.cursor()
        cursor.execute("""
            INSERT INTO Sale (vin, sale_date, buyer_id, sales_agent_username)
            VALUES (%s, %s, %s, %s)
        """, (vin, sale_date, buyer_id, agent_username))
        db.commit()
        cursor.close()

        session.pop('customer_id', None)
        session.pop('sale_vin', None)
        session.pop('customer_context', None)

        return redirect(url_for('vehicle.detail', vin=vin))

    return render_template('confirm_sale.html',
                           vehicle=vehicle,
                           buyer=buyer,
                           sale_date=date.today().isoformat())
