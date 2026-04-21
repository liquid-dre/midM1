# app/db.py
# -------
# Provides access to the MySQL database


# Usage in any of our routes:
#
#   from app.db import get_db
#
#   db = get_db()
#   cursor = db.cursor(dictionary=True)
#   cursor.execute("SELECT * FROM Vehicle WHERE vin = %s", (vin,))
#   row = cursor.fetchone()
#   cursor.close()
#
# For INSERT/UPDATE/DELETE, you have to commit:
#
#   cursor.execute("INSERT INTO ...", (...))
#   db.commit()
#   cursor.close()

import mysql.connector
from flask import current_app, g

def get_db():
    """
    Return a MySQL connection for the current request.

    Stores new connections on Flask's g object. g is Flask's built-in request-scoped storage. 
    The first time this is called in a request, it opens a new connection and saves it as g.db.
    Subsequent calls within the same request return that same connection.
    """
    # Check if connection exists for this request.
    if "db" not in g:
        g.db = mysql.connector.connect(
            host=current_app.config["DATABASE_HOST"],
            port=current_app.config["DATABASE_PORT"],
            user=current_app.config["DATABASE_USER"],
            password=current_app.config["DATABASE_PASSWORD"],
            database=current_app.config["DATABASE_NAME"],
        )
    return g.db


def close_db(e=None):
    """
    Close the database connection at the end of the request.

    We register this function in __init__.py using app.teardown_appcontext(close_db)
    """
    db = g.pop("db", None)
    if db is not None and db.is_connected():
        db.close()