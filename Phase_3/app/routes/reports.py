from flask import Blueprint, render_template
from app.db import get_db
from app.auth import role_required

reports_bp = Blueprint("reports", __name__)


@reports_bp.route("/")
@role_required("is_operating_manager")
def menu():
    return render_template("reports/reports_menu.html")


@reports_bp.route("/avg-time-inventory")
@role_required("is_operating_manager")
def avg_time_inventory():
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("""
        SELECT
            VehicleType.type_name,
            CASE
                WHEN COUNT(Sale.vin) = 0 THEN 'N/A'
                ELSE CAST(
                    ROUND(AVG(DATEDIFF(Sale.sale_date, Purchase.purchase_date) + 1), 0)
                AS CHAR)
            END AS avg_days_in_inventory
        FROM VehicleType
        LEFT JOIN Vehicle  ON Vehicle.vehicle_type_name = VehicleType.type_name
        LEFT JOIN Purchase ON Purchase.vin = Vehicle.vin
        LEFT JOIN Sale     ON Sale.vin = Vehicle.vin
        GROUP BY VehicleType.type_name
        ORDER BY VehicleType.type_name ASC
    """)
    rows = cursor.fetchall()
    cursor.close()
    return render_template("reports/avg_time_inventory.html", rows=rows)


@reports_bp.route("/price-per-condition")
@role_required("is_operating_manager")
def price_per_condition():
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("""
        SELECT
            Conditions.`condition`,
            COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Convertible' THEN Purchase.purchase_price END), 2)), '$0') AS Convertible,
            COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Coupe'        THEN Purchase.purchase_price END), 2)), '$0') AS Coupe,
            COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Minivan'      THEN Purchase.purchase_price END), 2)), '$0') AS Minivan,
            COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Other'        THEN Purchase.purchase_price END), 2)), '$0') AS Other,
            COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Sedan'        THEN Purchase.purchase_price END), 2)), '$0') AS Sedan,
            COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'SUV'          THEN Purchase.purchase_price END), 2)), '$0') AS SUV,
            COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Truck'        THEN Purchase.purchase_price END), 2)), '$0') AS Truck,
            COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Van'          THEN Purchase.purchase_price END), 2)), '$0') AS Van
        FROM (
            SELECT 'Excellent' AS `condition` UNION ALL
            SELECT 'Very Good'                UNION ALL
            SELECT 'Good'                     UNION ALL
            SELECT 'Fair'                     UNION ALL
            SELECT 'Rough'
        ) AS Conditions
        LEFT JOIN Vehicle  ON Vehicle.`condition` = Conditions.`condition`
        LEFT JOIN Purchase ON Purchase.vin = Vehicle.vin
        GROUP BY Conditions.`condition`
        ORDER BY CASE Conditions.`condition`
            WHEN 'Excellent'  THEN 1
            WHEN 'Very Good'  THEN 2
            WHEN 'Good'       THEN 3
            WHEN 'Fair'       THEN 4
            WHEN 'Rough'      THEN 5
        END
    """)
    rows = cursor.fetchall()
    cursor.close()
    types = ['Convertible', 'Coupe', 'Minivan', 'Other', 'Sedan', 'SUV', 'Truck', 'Van']
    return render_template("reports/price_per_condition.html", rows=rows, types=types)


@reports_bp.route("/monthly-sales")
@role_required("is_operating_manager")
def monthly_sales():
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("""
        WITH PartsCost AS (
            SELECT PartsOrder.vin,
                   SUM(PartsOrderLine.unit_price * PartsOrderLine.quantity) AS total_parts_cost
            FROM PartsOrder
            INNER JOIN PartsOrderLine
                ON PartsOrderLine.parts_order_number = PartsOrder.parts_order_number
            GROUP BY PartsOrder.vin
        )
        SELECT
            YEAR(Sale.sale_date)  AS sale_year,
            MONTH(Sale.sale_date) AS sale_month,
            COUNT(Sale.vin)       AS total_vehicles_sold,
            SUM(1.25 * Purchase.purchase_price + 1.10 * COALESCE(PartsCost.total_parts_cost, 0))
                AS gross_sales_income,
            SUM(0.25 * Purchase.purchase_price + 0.10 * COALESCE(PartsCost.total_parts_cost, 0))
                AS net_income
        FROM Sale
        INNER JOIN Purchase  ON Purchase.vin = Sale.vin
        LEFT JOIN  PartsCost ON PartsCost.vin = Sale.vin
        GROUP BY YEAR(Sale.sale_date), MONTH(Sale.sale_date)
        ORDER BY sale_year DESC, sale_month DESC
    """)
    rows = cursor.fetchall()
    cursor.close()
    return render_template("reports/monthly_sales.html", rows=rows)


@reports_bp.route("/monthly-drilldown/<int:year>/<int:month>")
@role_required("is_operating_manager")
def monthly_drilldown(year, month):
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("""
        WITH PartsCost AS (
            SELECT PartsOrder.vin,
                   SUM(PartsOrderLine.unit_price * PartsOrderLine.quantity) AS total_parts_cost
            FROM PartsOrder
            INNER JOIN PartsOrderLine
                ON PartsOrderLine.parts_order_number = PartsOrder.parts_order_number
            GROUP BY PartsOrder.vin
        )
        SELECT
            StaffUser.first_name,
            StaffUser.last_name,
            COUNT(Sale.vin) AS vehicles_sold,
            SUM(1.25 * Purchase.purchase_price + 1.10 * COALESCE(PartsCost.total_parts_cost, 0))
                AS total_sales
        FROM Sale
        INNER JOIN Purchase  ON Purchase.vin = Sale.vin
        INNER JOIN StaffUser ON StaffUser.username = Sale.sales_agent_username
        LEFT JOIN  PartsCost ON PartsCost.vin = Sale.vin
        WHERE YEAR(Sale.sale_date) = %s AND MONTH(Sale.sale_date) = %s
        GROUP BY StaffUser.username, StaffUser.first_name, StaffUser.last_name
        ORDER BY vehicles_sold DESC, total_sales DESC
    """, (year, month))
    rows = cursor.fetchall()
    cursor.close()
    return render_template("reports/monthly_drilldown.html", rows=rows, year=year, month=month)

@reports_bp.route("/parts-statistics")
@role_required("is_operating_manager")
def parts_statistics():
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("""
        SELECT Vendor.vendor_name,
            SUM(PartsOrderLine.quantity) AS num_pieces_vendor,
            SUM(PartsOrderLine.quantity * PartsOrderLine.unit_price) AS total_dollar_vendor
        FROM PartsOrder
        INNER JOIN PartsOrderLine ON PartsOrder.parts_order_number = PartsOrderLine.parts_order_number
        INNER JOIN Vendor ON Vendor.vendor_name = PartsOrder.vendor_name
        GROUP BY Vendor.vendor_name
        ORDER BY Vendor.vendor_name ASC
    """)
    rows = cursor.fetchall()
    cursor.close()
    return render_template("reports/parts_statistics.html", rows=rows)


@reports_bp.route("/seller-history/")
@role_required("is_operating_manager")
def seller_history():

    db = get_db()
    cursor = db.cursor(dictionary=True)

    # this query pulls together every customer who has ever sold a vehicle to Midtown Motors
    # we LEFT JOIN both IndividualCustomer and BusinessCustomer so we can get the right name
    # for each seller type - COALESCE picks whichever one is not NULL
    #
    # the subquery (vehicle_parts) adds up parts cost and quantity per vehicle
    # we LEFT JOIN it so sellers with no parts still show up (just with 0s)
    #
    # all the averages are divided by COUNT(DISTINCT p.vin) so we get per-vehicle averages
    # COALESCE(..., 0) makes sure NULL parts become 0 instead of breaking the division
    #
    # highlight = 1 if avg parts quantity >= 5 OR avg parts cost >= $500
    # the template uses this to color the row red
    #
    # sorted by total vehicles DESC, then avg purchase price ASC (per spec)
    cursor.execute("""
        SELECT
            COALESCE(
                CONCAT(ic.first_name, ' ', ic.last_name),
                bc.business_name
            ) AS seller_name,
            COUNT(DISTINCT p.vin) AS total_vehicles,
            ROUND(AVG(p.purchase_price), 2) AS avg_purchase_price,
            ROUND(COALESCE(SUM(vehicle_parts.total_qty),  0) / COUNT(DISTINCT p.vin), 2) AS avg_parts_quantity,
            ROUND(COALESCE(SUM(vehicle_parts.total_cost), 0) / COUNT(DISTINCT p.vin), 2) AS avg_parts_cost,
            CASE
                WHEN COALESCE(SUM(vehicle_parts.total_qty),  0) / COUNT(DISTINCT p.vin) >= 5
                  OR COALESCE(SUM(vehicle_parts.total_cost), 0) / COUNT(DISTINCT p.vin) >= 500
                THEN 1 ELSE 0
            END AS highlight
        FROM Customer c
        LEFT JOIN IndividualCustomer ic ON c.customer_id = ic.customer_id
        LEFT JOIN BusinessCustomer   bc ON c.customer_id = bc.customer_id
        JOIN  Purchase               p  ON c.customer_id = p.seller_identifier
        LEFT JOIN (
            SELECT   po.vin,
                     SUM(pol.quantity)                  AS total_qty,
                     SUM(pol.unit_price * pol.quantity) AS total_cost
            FROM     PartsOrder     po
            JOIN     PartsOrderLine pol ON po.parts_order_number = pol.parts_order_number
            GROUP BY po.vin
        ) vehicle_parts ON p.vin = vehicle_parts.vin
        GROUP BY c.customer_id, seller_name
        ORDER BY total_vehicles DESC, avg_purchase_price ASC
    """)
    rows = cursor.fetchall()
    cursor.close()
    return render_template("reports/seller_history.html", rows=rows)

