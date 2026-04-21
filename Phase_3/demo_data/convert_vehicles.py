import csv

# Script to convert vehicles.tsv into SQL INSERT statements.
# Inserts into: Manufacturer, VehicleType, Color, Vehicle, VehicleColor, Purchase, Sale
#
# Depends on: customers.sql and users.sql being loaded first (FK constraints).
#
# To run: python3 convert_vehicles.py > vehicles.sql


def esc(val):
    """Wrap val in SQL single quotes, escaping any embedded single quotes. Returns NULL for None/empty."""
    if val is None or val == '':
        return 'NULL'
    return "'" + str(val).replace("'", "''") + "'"


def customer_id_subquery(identifier):
    """
    Returns a SQL subquery that resolves a customer identifier to customer_id.
    Identifiers with a hyphen (e.g. '28-8467164') are tax IDs (BusinessCustomer).
    Identifiers without a hyphen (e.g. '567152735') are SSNs (IndividualCustomer).
    """
    if '-' in identifier:
        return f"(SELECT customer_id FROM BusinessCustomer WHERE tax_id = '{identifier}')"
    else:
        return f"(SELECT customer_id FROM IndividualCustomer WHERE ssn = '{identifier}')"


with open("vehicles.tsv") as f:
    reader = csv.DictReader(f, delimiter='\t')
    print("USE team15_database;\n")

    for row in reader:
        vin              = row['VIN']
        model            = row['model_name']
        year             = row['year']
        raw_notes        = row['notes'].strip().rstrip(';').strip()
        notes            = raw_notes if raw_notes else None
        manufacturer     = row['manufacturer_name']
        condition        = row['condition']
        vehicle_type     = row['vehicle_type']
        horsepower       = row['horsepower']
        fuel_type        = row['fuel_type']
        drivetrain       = row['drivetrain']
        colors           = [c.strip() for c in row['colors'].split(',') if c.strip()]
        purchase_date    = row['purchase_date']
        purchase_price   = row['purchase_price']
        seller_id        = row['purchased_from_customer'].strip()
        acq_spec         = row['acq_spec'].strip()
        sale_date        = row['sale_date'].strip()
        sold_to          = row['sold_to_customer'].strip()
        salesperson      = row['salesperson'].strip()

        # ── Manufacturer (INSERT IGNORE because multiple vehicles share one manufacturer) ──
        print(f"INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ({esc(manufacturer)});")

        # ── VehicleType ──
        print(f"INSERT IGNORE INTO VehicleType (type_name) VALUES ({esc(vehicle_type)});")

        # ── Colors ──
        for color in colors:
            print(f"INSERT IGNORE INTO Color (color_name) VALUES ({esc(color)});")

        # ── Vehicle ──
        print(
            f"INSERT IGNORE INTO Vehicle "
            f"(vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) "
            f"VALUES ({esc(vin)}, {esc(model)}, {year}, {esc(condition)}, {esc(fuel_type)}, "
            f"{esc(drivetrain)}, {horsepower}, {esc(notes)}, {esc(manufacturer)}, {esc(vehicle_type)});"
        )

        # ── VehicleColor (one row per color) ──
        for color in colors:
            print(f"INSERT IGNORE INTO VehicleColor (vin, color_name) VALUES ({esc(vin)}, {esc(color)});")

        # ── Purchase ──
        seller_subquery = customer_id_subquery(seller_id)
        print(
            f"INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) "
            f"VALUES ({esc(vin)}, {purchase_price}, {esc(purchase_date)}, {seller_subquery}, {esc(acq_spec)});"
        )

        # ── Sale (only if sale data is present) ──
        if sale_date and sold_to and salesperson:
            buyer_subquery = customer_id_subquery(sold_to)
            print(
                f"INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) "
                f"VALUES ({esc(vin)}, {esc(sale_date)}, {buyer_subquery}, {esc(salesperson)});"
            )

        print()
