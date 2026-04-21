# app/auth.py
# -------
# Handle authentication for the app.
#
# This file has three main components:
# 1. Routes for login and logout (i.e. the auth_bp blueprint)
# 2. Decorators that protect routes (for RBA, i.e. @login_required, @role_required)
# 3. current_user_roles(), reads the Flask session object and returns dict for populating the templates
#
# The following session keys are set when a user successfully logs in. These are used by the decorators and the template context processor
# session["username"]
# session["first_name"]
# session["last_name"]
# session["is_acquisition_specialist"]  (True/False)
# session["is_sales_agent"]             (True/False)
# session["is_operating_manager"]       (True/False)
# session["is_owner"]                   (True/False, derived from the above three)

from functools import wraps

from flask import Blueprint, flash, redirect, request, session, url_for

from app.db import get_db

# Blueprint for login/logout routes.
# This gets registered in __init__.py alongside the other blueprints.
auth_bp = Blueprint("auth", __name__)

#--------------------------------------------------------------Routes -----------------------------------------------------------------------------------

@auth_bp.route("/login", methods=["POST"])
def login():
    """
    Handle login form submission.

    Reads the username and password from the login form, checks against StaffUser and subtype tables, and if valid, stores user info and role flags in the session.

    """
    username = request.form.get("username", "").strip()
    password = request.form.get("password", "").strip()

    if not username or not password:
        flash("Please enter both username and password.", "error")
        return redirect(url_for("search.index"))

    # Open a cursor and query for the user and their roles.
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute(
    # Query from Phase 2, performs left joins to get role flags in one query. 
        """
        SELECT
            su.username, su.first_name, su.last_name,
            CASE WHEN acq.username IS NOT NULL THEN 1 ELSE 0 END
                AS is_acquisition_specialist,
            CASE WHEN sa.username IS NOT NULL THEN 1 ELSE 0 END
                AS is_sales_agent,
            CASE WHEN om.username IS NOT NULL THEN 1 ELSE 0 END
                AS is_operating_manager
        FROM StaffUser su
        LEFT JOIN AcquisitionSpecialist acq ON su.username = acq.username
        LEFT JOIN SalesAgent sa             ON su.username = sa.username
        LEFT JOIN OperatingManager om       ON su.username = om.username
        WHERE su.username = %s
          AND su.password_plaintext = %s
        """,
        (username, password),
    )
    user = cursor.fetchone()
    cursor.close()

    if user is None:
        flash("Incorrect username or password.", "error")
        return redirect(url_for("search.index"))

    # Store user info and role flags in the session; persists across requests because Flask sends a session cookie to the browser.
    session["username"] = user["username"]
    session["first_name"] = user["first_name"]
    session["last_name"] = user["last_name"]
    session["is_acquisition_specialist"] = bool(user["is_acquisition_specialist"])
    session["is_sales_agent"] = bool(user["is_sales_agent"])
    session["is_operating_manager"] = bool(user["is_operating_manager"])

    # Check if user is Owner 
    session["is_owner"] = (
        session["is_acquisition_specialist"]
        and session["is_sales_agent"]
        and session["is_operating_manager"]
    )

    flash(f"Hello, {user['first_name']}!")
    return redirect(url_for("search.index"))


@auth_bp.route("/logout")
def logout():
    """
    Clear the session and redirect to public search page.
    session.clear() removes all keys from the session dict.
    Flask then sends back an empty session cookie, so the
    browser forgets who the user was.
    """
    session.clear()
    flash("Logged out.", "info")
    return redirect(url_for("search.index"))


#--------------------------------------------------------------Decorators -----------------------------------------------------------------------------------

def login_required(f):
    """
    Decorator; redirects to the public search page if no user logged in.

    Usage:
        @some_bp.route("/some-page")
        @login_required
        def some_page():
            ...
    """
    @wraps(f)
    def decorated(*args, **kwargs):
        if "username" not in session:
            flash("Log in to access page.", "error")
            return redirect(url_for("search.index"))
        return f(*args, **kwargs)
    return decorated


def role_required(*roles):
    """
    Decorator; Restricts route to users with particular roles.

    Usage:
        @some_bp.route("/add-vehicle")
        @role_required("is_acquisition_specialist")
        def add_vehicle():
            ...

    This is actually a decorator factory: it takes arguments (the role names)
    and returns the actual decorator. That's why there are three
    nested functions:
        role_required(...)  — takes the role names, returns decorator
            decorator(f)    — takes the route function, returns wrapper
                decorated() — runs on each request, checks permissions

    """
    def decorator(f):
        @wraps(f)
        def decorated(*args, **kwargs):
            # Must be logged in.
            if "username" not in session:
                flash("Please log in to access this page.", "error")
                return redirect(url_for("search.index"))

            # Let owner through regardless
            if session.get("is_owner"):
                return f(*args, **kwargs)

            # Check if the user holds at least one of the required roles.
            if not any(session.get(role) for role in roles):
                flash("Permission required to access this page.", "error")
                return redirect(url_for("search.index"))

            return f(*args, **kwargs)
        return decorated
    return decorator


#--------------------------------------------------------------Helpers -----------------------------------------------------------------------------------

def current_user_roles():
    """
    Return dict containing user info and role flags used in templates.

    Called automatically before every template render by the context
    processor registered in __init__.py. Templates access this as
    the "user" variable:

        {% if user.logged_in %}
        {% if user.is_owner %}
        {{ user.first_name }}

    If nobody is logged in, all flags are False and names are None.
    """
    return {
        "logged_in": "username" in session,
        "username": session.get("username"),
        "first_name": session.get("first_name"),
        "last_name": session.get("last_name"),
        "is_acquisition_specialist": session.get("is_acquisition_specialist", False),
        "is_sales_agent": session.get("is_sales_agent", False),
        "is_operating_manager": session.get("is_operating_manager", False),
        "is_owner": session.get("is_owner", False),
    }



# TODO: Remove before demo! 
# Routes for testing, to be removed before demo. These routes allow you to mock up a logged in user and set the role flags in the session.
# This allows you to test the different role-based views without having to go through the login process. 
# You can access these routes by going to /debug/set_role/<role> where <role> is one of "acquisition_specialist", "sales_agent", "operating_manager", or "owner". 
# For example, /debug/set_role/sales_agent will set the session to have the sales agent role.
@auth_bp.route("/debug/set_role/<role>")
def set_role(role):
    session["username"] = "testuser"
    session["first_name"] = "Test"
    session["last_name"] = "User"
    session["is_acquisition_specialist"] = (role == "acquisition_specialist" or role == "owner")
    session["is_sales_agent"] = (role == "sales_agent" or role == "owner")
    session["is_operating_manager"] = (role == "operating_manager" or role == "owner")
    session["is_owner"] = (role == "owner")
    return f"Set role to {role}"