# app/routes/search.py
# -------
# Search blueprint — the main landing page and vehicle search for Midtown Motors.
#
# Routes:
#   GET  /        — Landing page. Shows all vehicles visible to the current user role.
#   POST /search  — Handles search form submission with filters, returns matching vehicles.
#
# This is the only page accessible to public (non-logged-in) users.
#
# Key design decisions (per AC+SQL spec):
#   - All non-empty filters (VIN, keyword, and every dropdown) are combined with AND.
#   - Dropdown options are populated from DISTINCT values of visible vehicles, not full lookup tables.
#   - Keyword search is explicitly case-insensitive using LOWER().
#   - Role-based visibility:
#       Public / Sales Agent  → unsold vehicles with no pending parts
#       Acquisition Specialist → all unsold vehicles (including pending parts)
#       Manager / Owner        → sold, unsold, or all (via radio filter)
#   - Sale price = 1.25 * purchase_price + 1.10 * total_parts_cost
#   - Results sorted by VIN ascending.

from flask import Blueprint, render_template, request, session

from app.db import get_db

# Create a blueprint named "search". The name will be used in url_for("search.index") to generate our route URLs.
search_bp = Blueprint("search", __name__)


def _get_counts(cursor):
    """
    Return (vehicles_for_sale, vehicles_parts_pending) counts.

    vehicles_for_sale: unsold vehicles with NO pending parts (all parts Installed or no parts at all).
    vehicles_parts_pending: unsold vehicles that have at least one part with status Ordered or Received.
    """
    cursor.execute("""
        SELECT
            SUM(CASE WHEN pending_count = 0 THEN 1 ELSE 0 END) AS for_sale,
            SUM(CASE WHEN pending_count > 0 THEN 1 ELSE 0 END) AS parts_pending
        FROM (
            SELECT v.vin,
                   COUNT(CASE WHEN pol.status IN ('Ordered', 'Received') THEN 1 END) AS pending_count
            FROM Vehicle v
            INNER JOIN Purchase p ON p.vin = v.vin
            LEFT JOIN Sale s ON s.vin = v.vin
            LEFT JOIN PartsOrder po ON po.vin = v.vin
            LEFT JOIN PartsOrderLine pol ON pol.parts_order_number = po.parts_order_number
            WHERE s.vin IS NULL
            GROUP BY v.vin
        ) AS unsold
    """)
    row = cursor.fetchone()
    return (int(row["for_sale"] or 0), int(row["parts_pending"] or 0))


def _visibility_where(user_logged_in, user_roles, sold_filter="all"):
    """
    Build role-based WHERE clauses that control which vehicles a user can see.

    Returns a list of SQL condition strings (no leading WHERE/AND).
    Expects these table aliases to exist in the calling query: v=Vehicle, s=Sale.
    """
    is_acq = user_roles.get("is_acquisition_specialist", False)
    is_mgr = user_roles.get("is_operating_manager", False)
    is_owner = user_roles.get("is_owner", False)

    clauses = []
    if is_mgr or is_owner:
        if sold_filter == "sold":
            clauses.append("s.vin IS NOT NULL")
        elif sold_filter == "unsold":
            clauses.append("s.vin IS NULL")
        # "all" — no clause
    elif user_logged_in and is_acq:
        clauses.append("s.vin IS NULL")
    else:
        # Public / Sales Agent: unsold with NO pending parts
        clauses.append("s.vin IS NULL")
        clauses.append("""
            NOT EXISTS (
                SELECT 1 FROM PartsOrder po2
                INNER JOIN PartsOrderLine pol2 ON pol2.parts_order_number = po2.parts_order_number
                WHERE po2.vin = v.vin AND pol2.status IN ('Ordered', 'Received')
            )
        """)
    return clauses


def _get_dropdown_options(cursor, user_logged_in, user_roles, sold_filter="all"):
    """
    Populate search form dropdowns with DISTINCT values from visible vehicles only.

    Per AC+SQL spec, dropdowns should not show values from the full lookup tables —
    only values that actually exist among vehicles the current user can see.
    Reuses _visibility_where() so the filtering logic stays in one place.
    """
    vis_clauses = _visibility_where(user_logged_in, user_roles, sold_filter)
    vis_where = (" AND " + " AND ".join(vis_clauses)) if vis_clauses else ""

    # Base FROM with the joins needed for visibility checks
    base_from = """
        FROM Vehicle v
        INNER JOIN Purchase p ON p.vin = v.vin
        LEFT JOIN Sale s ON s.vin = v.vin
        WHERE 1=1 {vis}
    """.format(vis=vis_where)

    cursor.execute("SELECT DISTINCT v.vehicle_type_name " + base_from + " ORDER BY v.vehicle_type_name")
    vehicle_types = [r["vehicle_type_name"] for r in cursor.fetchall()]

    cursor.execute("SELECT DISTINCT v.manufacturer_name " + base_from + " ORDER BY v.manufacturer_name")
    manufacturers = [r["manufacturer_name"] for r in cursor.fetchall()]

    cursor.execute("SELECT DISTINCT v.fuel_type " + base_from + " ORDER BY v.fuel_type")
    fuel_types = [r["fuel_type"] for r in cursor.fetchall()]

    cursor.execute("SELECT DISTINCT v.drive_train " + base_from + " ORDER BY v.drive_train")
    drivetrains = [r["drive_train"] for r in cursor.fetchall()]

    cursor.execute("""
        SELECT DISTINCT vc.color_name
        FROM VehicleColor vc
        INNER JOIN Vehicle v ON v.vin = vc.vin
        INNER JOIN Purchase p ON p.vin = v.vin
        LEFT JOIN Sale s ON s.vin = v.vin
        WHERE 1=1 {vis}
        ORDER BY vc.color_name
    """.format(vis=vis_where))
    colors = [r["color_name"] for r in cursor.fetchall()]

    cursor.execute("SELECT DISTINCT v.`year` " + base_from + " ORDER BY v.`year`")
    years = [r["year"] for r in cursor.fetchall()]

    return {
        "vehicle_types": vehicle_types,
        "manufacturers": manufacturers,
        "colors": colors,
        "fuel_types": fuel_types,
        "drivetrains": drivetrains,
        "years": years,
    }


def _build_search_query(form, user_logged_in, user_roles):
    """
    Build a parameterised search query from form inputs and user role.

    All non-empty filters are combined with AND:
    - VIN search (exact match, staff only)
    - Keyword search (matches manufacturer, model, year, notes)
    - Dropdown filters (type, manufacturer, year, fuel_type, drivetrain, color)

    Returns (sql_string, params_list).
    """
    params = []

    # Base query: vehicle info + purchase price + aggregated parts cost + colors
    sql = """
        SELECT
            v.vin,
            v.vehicle_type_name,
            v.manufacturer_name,
            v.model,
            v.`year`,
            v.`condition`,
            v.fuel_type,
            v.drive_train,
            v.horse_power,
            GROUP_CONCAT(DISTINCT vc.color_name ORDER BY vc.color_name SEPARATOR ', ') AS colors,
            ROUND(1.25 * p.purchase_price + 1.10 * COALESCE(pc.total_parts_cost, 0), 2) AS sale_price,
            CASE WHEN s.vin IS NOT NULL THEN 'Sold' ELSE 'Unsold' END AS status
        FROM Vehicle v
        INNER JOIN Purchase p ON p.vin = v.vin
        LEFT JOIN Sale s ON s.vin = v.vin
        LEFT JOIN VehicleColor vc ON vc.vin = v.vin
        LEFT JOIN (
            SELECT po.vin,
                   SUM(pol.unit_price * pol.quantity) AS total_parts_cost
            FROM PartsOrder po
            INNER JOIN PartsOrderLine pol ON pol.parts_order_number = po.parts_order_number
            GROUP BY po.vin
        ) pc ON pc.vin = v.vin
    """

    # Role-based visibility
    sold_filter = form.get("sold_filter", "all")
    where = list(_visibility_where(user_logged_in, user_roles, sold_filter))

    # Apply every non-empty filter; they combine with AND.
    vin = form.get("vin", "").strip()
    keyword = form.get("keyword", "").strip()
    vehicle_type = form.get("vehicle_type", "")
    manufacturer = form.get("manufacturer", "")
    year = form.get("year", "").strip()
    fuel_type = form.get("fuel_type", "")
    drive_train = form.get("drive_train", "")
    color = form.get("color", "")

    if vin and user_logged_in:
        where.append("v.vin = %s")
        params.append(vin)

    if keyword:
        like_val = f"%{keyword}%"
        where.append("""
            (LOWER(v.manufacturer_name) LIKE LOWER(%s)
             OR LOWER(v.model) LIKE LOWER(%s)
             OR CAST(v.`year` AS CHAR) LIKE %s
             OR LOWER(v.notes) LIKE LOWER(%s))
        """)
        params.extend([like_val, like_val, like_val, like_val])

    if vehicle_type:
        where.append("v.vehicle_type_name = %s")
        params.append(vehicle_type)

    if manufacturer:
        where.append("v.manufacturer_name = %s")
        params.append(manufacturer)

    if year:
        where.append("v.`year` = %s")
        params.append(int(year))

    if fuel_type:
        where.append("v.fuel_type = %s")
        params.append(fuel_type)

    if drive_train:
        where.append("v.drive_train = %s")
        params.append(drive_train)

    if color:
        where.append("""
            EXISTS (
                SELECT 1 FROM VehicleColor vc2
                WHERE vc2.vin = v.vin AND vc2.color_name = %s
            )
        """)
        params.append(color)

    if where:
        sql += " WHERE " + " AND ".join(where)

    sql += " GROUP BY v.vin ORDER BY v.vin ASC"

    return sql, params


@search_bp.route("/")
def index():
    """
    GET / — Landing page. Also serves as the "Clear" button target.

    Runs an empty-filter search so all vehicles visible to the current user
    are displayed immediately on page load (no need to click Search first).
    """
    db = get_db()
    cursor = db.cursor(dictionary=True)

    vehicles_for_sale, vehicles_parts_pending = _get_counts(cursor)

    user_logged_in = "username" in session
    user_roles = {
        "is_acquisition_specialist": session.get("is_acquisition_specialist", False),
        "is_sales_agent": session.get("is_sales_agent", False),
        "is_operating_manager": session.get("is_operating_manager", False),
        "is_owner": session.get("is_owner", False),
    }

    options = _get_dropdown_options(cursor, user_logged_in, user_roles)

    # Run search with no filters to show all available vehicles
    sql, params = _build_search_query({}, user_logged_in, user_roles)
    cursor.execute(sql, params)
    results = cursor.fetchall()

    for row in results:
        if row["sale_price"] is not None:
            row["sale_price"] = f"${row['sale_price']:,.2f}"

    cursor.close()

    return render_template(
        "search.html",
        vehicles_for_sale=vehicles_for_sale,
        vehicles_parts_pending=vehicles_parts_pending,
        results=results,
        **options,
    )


@search_bp.route("/search", methods=["POST"])
def search():
    """
    POST /search — Handle search form submission.

    Reads form fields, builds a filtered SQL query via _build_search_query(),
    and re-renders the page with results and preserved form values.
    """
    db = get_db()
    cursor = db.cursor(dictionary=True)

    vehicles_for_sale, vehicles_parts_pending = _get_counts(cursor)

    user_logged_in = "username" in session
    user_roles = {
        "is_acquisition_specialist": session.get("is_acquisition_specialist", False),
        "is_sales_agent": session.get("is_sales_agent", False),
        "is_operating_manager": session.get("is_operating_manager", False),
        "is_owner": session.get("is_owner", False),
    }

    sold_filter = request.form.get("sold_filter", "all")
    options = _get_dropdown_options(cursor, user_logged_in, user_roles, sold_filter)

    sql, params = _build_search_query(request.form, user_logged_in, user_roles)
    cursor.execute(sql, params)
    results = cursor.fetchall()

    # Format sale_price for display
    for row in results:
        if row["sale_price"] is not None:
            row["sale_price"] = f"${row['sale_price']:,.2f}"

    cursor.close()

    return render_template(
        "search.html",
        vehicles_for_sale=vehicles_for_sale,
        vehicles_parts_pending=vehicles_parts_pending,
        results=results,
        # Preserve form values
        selected_vehicle_type=request.form.get("vehicle_type", ""),
        selected_manufacturer=request.form.get("manufacturer", ""),
        selected_year=request.form.get("year", ""),
        selected_fuel_type=request.form.get("fuel_type", ""),
        selected_drive_train=request.form.get("drive_train", ""),
        selected_color=request.form.get("color", ""),
        selected_keyword=request.form.get("keyword", ""),
        selected_vin=request.form.get("vin", ""),
        selected_sold_filter=sold_filter,
        **options,
    )
