# app/__init__.py
# ------

# Makes the "app/"" folder a Python package and contains the app factory function "create_app", as discussed in the Flask tutorial. 

import os
from flask import Flask


def create_app():
    """Build and return a configured Flask application."""

    # Create the app
    # __name__ tells Flask where to find templates/ and static/
    # relative to this file's location (the app/ folder).
    app = Flask(__name__)

    # Apply configuration 
    # SECRET_KEY is required for Flask sessions (which store our login state in an encrypted cookie).     
    app.secret_key = os.environ.get("SECRET_KEY", "dev-secret-key")

    # Database connection details, need to be aligned with Jose's docker-compose.yml 
    # These are accessed later by db.py via app.config["DATABASE_HOST"] etc.
    app.config["DATABASE_HOST"] = os.environ.get("DB_HOST", "db")
    app.config["DATABASE_PORT"] = int(os.environ.get("DB_PORT", "3306"))
    app.config["DATABASE_USER"] = os.environ.get("DB_USER", "admin")
    app.config["DATABASE_PASSWORD"] = os.environ.get("DB_PASS", "admin")
    app.config["DATABASE_NAME"] = os.environ.get("DB_NAME", "team15_database")
    
    # Database teardown
    # Close connection after each request. close_db to be defined in db.py.
    from app.db import close_db
    app.teardown_appcontext(close_db)

    # Template context processor
    # Makes a "user" variable available in all templates. It reads the session and
    # returns a dict of role flags. 
    from app.auth import current_user_roles
    @app.context_processor
    def inject_user():
        return {"user": current_user_roles()}

    # Register blueprints
    # Each blueprint is a group of related routes defined in its own file. The url_prefix means all routes in that
    # blueprint are nested under that path.

    from app.auth import auth_bp
    app.register_blueprint(auth_bp)
    # Routes: POST /login, GET /logout

    from app.routes.search import search_bp
    app.register_blueprint(search_bp)
    # Routes: GET /, POST /search

    from app.routes.vehicle import vehicle_bp
    app.register_blueprint(vehicle_bp)
    # Routes: GET /vehicle/<vin>

    from app.routes.purchase import purchase_bp
    app.register_blueprint(purchase_bp, url_prefix="/purchase")
    # Routes: GET|POST /purchase/add-vehicle

    from app.routes.sale import sale_bp
    app.register_blueprint(sale_bp, url_prefix="/sale")
    # Routes: GET|POST /sale/confirm/<vin>

    from app.routes.customer import customer_bp
    app.register_blueprint(customer_bp, url_prefix="/customer")
    # Routes: GET|POST /customer/lookup
    #         POST /customer/confirm
    #         POST /customer/save

    from app.routes.parts import parts_bp
    app.register_blueprint(parts_bp, url_prefix="/parts")
    # Routes: GET|POST /parts/lookup/<vin>
    #         POST /parts/save/<vin>

    from app.routes.vendor import vendor_bp
    app.register_blueprint(vendor_bp, url_prefix="/vendor")
    # Routes: GET|POST /vendor/lookup
    #         POST /vendor/save

    from app.routes.reports import reports_bp
    app.register_blueprint(reports_bp, url_prefix="/reports")
    # Routes: GET /reports/
    #         GET /reports/seller-history
    #         GET /reports/avg-time-inventory
    #         GET /reports/price-per-condition
    #         GET /reports/parts-statistics
    #         GET /reports/monthly-sales
    #         GET /reports/monthly-drilldown/<year>/<month>

    return app
