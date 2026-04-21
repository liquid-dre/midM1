# app/routes/purchase.py
# -------
# Purchase blueprint — handles the "Add Vehicle" flow.
#
# Currently a stub: redirects back to search with an info message.
# Will be implemented to allow acquisition specialists to record new vehicle purchases.

from flask import Blueprint, redirect, session, url_for
purchase_bp = Blueprint("purchase", __name__)

@purchase_bp.route("/add-vehicle")
def add_vehicle():
    """
    Entry point for the Add Vehicle flow.
    Sets session context to 'purchase' then routes to customer lookup
    so the acquisition specialist can find or add the seller first.
    """
    session['customer_context'] = 'purchase'
    return redirect(url_for('customer.lookup'))
