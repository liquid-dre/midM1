-- team015_test_data.sql
-- Load after schema: mysql -u root -p < team015_p2_schema.sql && mysql -u root -p < team015_test_data.sql
USE cs6400_sp26_team015;

-- Lookup tables (from spec appendix)
INSERT INTO VehicleType (type_name) VALUES
  ('Convertible'),('Coupe'),('Minivan'),('Other'),
  ('Sedan'),('SUV'),('Truck'),('Van');

INSERT INTO Manufacturer (manufacturer_name) VALUES
  ('Toyota'),('Ford'),('Honda'),('BMW'),('Tesla'),('Chevrolet');

INSERT INTO Color (color_name) VALUES
  ('Red'),('Blue'),('White'),('Black'),('Silver'),('Green');

-- Staff (one per role + owner in all roles)
INSERT INTO StaffUser (username, password_plaintext, first_name, last_name) VALUES
  ('acq_alice',   'pass1', 'Alice',  'Nguyen'),
  ('acq_frank',   'pass2', 'Frank',  'Ortiz'),
  ('sales_bob',   'pass3', 'Bob',    'Jones'),
  ('sales_diana', 'pass4', 'Diana',  'Park'),
  ('mgr_carol',   'pass5', 'Carol',  'White'),
  ('owner_yel',   'pass6', 'Yel',    'Jacket');

INSERT INTO AcquisitionSpecialist (username) VALUES
  ('acq_alice'),('acq_frank'),('owner_yel');
INSERT INTO SalesAgent (username) VALUES
  ('sales_bob'),('sales_diana'),('owner_yel');
INSERT INTO OperatingManager (username) VALUES
  ('mgr_carol'),('owner_yel');

-- Customers (AUTO_INCREMENT generates IDs 1-6 in insertion order)
-- C1-C3,C5,C6 = individual; C4 = business
INSERT INTO Customer (phone_number, email, state, city, street, postal_code) VALUES
  ('555-0001', 'dave@test.com',  'GA', 'Atlanta',  '100 Main St',    '30301'),  -- → 1
  ('555-0002', 'eve@test.com',   'GA', 'Marietta', '200 Oak Ave',    '30060'),  -- → 2
  ('555-0003', NULL,              'GA', 'Decatur',  '300 Pine Rd',    '30030'),  -- → 3
  ('555-0004', 'acme@test.com',  'GA', 'Atlanta',  '400 Peach Blvd', '30302'),  -- → 4
  ('555-0005', 'grace@test.com', 'GA', 'Roswell',  '500 Elm St',     '30075'),  -- → 5
  ('555-0006', NULL,              'FL', 'Miami',    '600 Beach Dr',   '33101');  -- → 6

INSERT INTO IndividualCustomer (customer_id, ssn, first_name, last_name) VALUES
  (1, '111-22-3333', 'Dave',    'Brown'),
  (2, '444-55-6666', 'Eve',     'Green'),
  (3, '777-88-9999', 'Charlie', 'Davis'),
  (5, '222-33-4444', 'Grace',   'Hall'),
  (6, '333-44-5555', 'Hank',    'Miller');

INSERT INTO BusinessCustomer (customer_id, tax_id, business_name,
  primary_contact_title, primary_contact_first_name, primary_contact_last_name) VALUES
  (4, '58-1234567', 'Acme Auto Wholesalers', 'Manager', 'Pat', 'Lee');

-- Vehicles
-- Edge cases: multiple per type/condition (Sedan/Excellent), unsold (5SUV),
-- same-day sale (6COUPE), empty types (Convertible,Minivan,Other,Van),
-- empty condition (Very Good), vehicle with heavy parts (8TRUCK)
INSERT INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train,
  horse_power, notes, manufacturer_name, vehicle_type_name) VALUES
  ('1SEDAN001EXCELLEN', 'Camry',     2022, 'Excellent', 'Gas',     'FWD', 200, 'Low mileage',           'Toyota',    'Sedan'),
  ('2SEDAN002EXCELLEN', 'Accord',    2023, 'Excellent', 'Gas',     'FWD', 190, NULL,                    'Honda',     'Sedan'),
  ('3SEDAN003GOOD0000', 'Corolla',   2021, 'Good',      'Gas',     'FWD', 170, 'Minor bumper scratches','Toyota',    'Sedan'),
  ('4TRUCK001FAIR0000', 'F-150',     2022, 'Fair',      'Gas',     '4WD', 300, 'Needs new tires',       'Ford',      'Truck'),
  ('5SUV00001GOOD0000', 'RAV4',      2023, 'Good',      'Hybrid',  'AWD', 220, NULL,                    'Toyota',    'SUV'),
  ('6COUPE001EXCELLEN', '4 Series',  2023, 'Excellent', 'Gas',     'RWD', 255, 'Sport package',         'BMW',       'Coupe'),
  ('7SUV00002EXCELLEN', 'Model Y',   2024, 'Excellent', 'Battery', 'AWD', 350, NULL,                    'Tesla',     'SUV'),
  ('8TRUCK002ROUGH000', 'Silverado', 2020, 'Rough',     'Gas',     '4WD', 280, 'Needs significant work','Chevrolet', 'Truck');

-- Colors (7SUV has two — tests multi-color display)
INSERT INTO VehicleColor (vin, color_name) VALUES
  ('1SEDAN001EXCELLEN', 'White'),
  ('2SEDAN002EXCELLEN', 'Blue'),
  ('3SEDAN003GOOD0000', 'Silver'),
  ('4TRUCK001FAIR0000', 'Red'),
  ('5SUV00001GOOD0000', 'Green'),
  ('6COUPE001EXCELLEN', 'Black'),
  ('7SUV00002EXCELLEN', 'White'),
  ('7SUV00002EXCELLEN', 'Black'),
  ('8TRUCK002ROUGH000', 'Red');

-- Purchases (dates chosen for easy day-count arithmetic)
-- seller_identifier references Customer.customer_id (AUTO_INCREMENT values 1-6)
INSERT INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES
  ('1SEDAN001EXCELLEN',  8000.00, '2025-01-10', 1, 'acq_alice'),
  ('2SEDAN002EXCELLEN', 10000.00, '2025-02-15', 1, 'acq_alice'),
  ('3SEDAN003GOOD0000',  5000.00, '2025-03-01', 2, 'acq_frank'),
  ('4TRUCK001FAIR0000',  7000.00, '2025-03-20', 4, 'acq_alice'),
  ('5SUV00001GOOD0000', 15000.00, '2025-04-01', 3, 'acq_frank'),
  ('6COUPE001EXCELLEN', 25000.00, '2025-05-10', 2, 'acq_alice'),
  ('7SUV00002EXCELLEN', 45000.00, '2025-06-01', 3, 'acq_frank'),
  ('8TRUCK002ROUGH000',  3000.00, '2025-06-15', 4, 'acq_alice');

-- Sales (5SUV unsold — tests N/A in inventory report)
-- buyer_id references Customer.customer_id
INSERT INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES
  ('1SEDAN001EXCELLEN', '2025-01-20', 5, 'sales_bob'),     -- 11 days
  ('2SEDAN002EXCELLEN', '2025-02-20', 6, 'sales_bob'),     -- 6 days
  ('3SEDAN003GOOD0000', '2025-03-15', 5, 'sales_diana'),   -- 15 days
  ('4TRUCK001FAIR0000', '2025-04-20', 6, 'sales_bob'),     -- 32 days
  ('6COUPE001EXCELLEN', '2025-05-10', 5, 'sales_diana'),   -- 1 day (same-day)
  ('7SUV00002EXCELLEN', '2025-06-11', 6, 'sales_bob'),     -- 11 days
  ('8TRUCK002ROUGH000', '2025-07-20', 5, 'sales_diana');   -- 36 days

-- Parts (8TRUCK heavy parts — triggers seller history red highlight for C4)
INSERT INTO Vendor (vendor_name, phone_number, state, city, street, postal_code) VALUES
  ('AutoParts Plus',   '555-8001', 'GA', 'Atlanta', '10 Parts Way', '30303'),
  ('Quick Fix Supply', '555-8002', 'FL', 'Orlando', '20 Supply Rd', '32801');

INSERT INTO PartsOrder (parts_order_number, order_ordinal, vin, vendor_name) VALUES
  ('8TRUCK002ROUGH000-001', 1, '8TRUCK002ROUGH000', 'AutoParts Plus'),
  ('8TRUCK002ROUGH000-002', 2, '8TRUCK002ROUGH000', 'Quick Fix Supply'),
  ('4TRUCK001FAIR0000-001', 1, '4TRUCK001FAIR0000', 'AutoParts Plus');

INSERT INTO PartsOrderLine (vendor_part_number, description, status, quantity, unit_price, parts_order_number) VALUES
  ('AP-BRK-100', 'Brake pads front',   'Installed', 2,  45.00, '8TRUCK002ROUGH000-001'),
  ('AP-BRK-200', 'Brake rotors front', 'Installed', 2, 120.00, '8TRUCK002ROUGH000-001'),
  ('QF-ENG-500', 'Alternator',         'Installed', 1, 350.00, '8TRUCK002ROUGH000-002'),
  ('AP-TIR-300', 'All-season tire',    'Ordered', 4, 150.00, '4TRUCK001FAIR0000-001');

-- ============================================================
-- EXPECTED RESULTS (verify by hand)
-- ============================================================
-- AVG TIME IN INVENTORY:
--   Convertible→N/A  Coupe→1  Minivan→N/A  Other→N/A
--   Sedan→10.67  SUV→11  Truck→34  Van→N/A
--
-- PRICE PER CONDITION (avg purchase price):
--              Convrt Coupe  Mini Other Sedan  SUV    Truck Van
--   Excellent  $0     $25000 $0   $0    $9000  $45000 $0    $0
--   Very Good  $0     $0     $0   $0    $0     $0     $0    $0
--   Good       $0     $0     $0   $0    $5000  $15000 $0    $0
--   Fair       $0     $0     $0   $0    $0     $0     $7000 $0
--   Rough      $0     $0     $0   $0    $0     $0     $3000 $0
--
-- PARTS STATISTICS:
--   AutoParts Plus   → qty=8  total=$930  (2×45 + 2×120 + 4×150)
--   Quick Fix Supply → qty=1  total=$350
--
-- SELLER HISTORY:
--   Dave Brown(C1)    → 2 veh, avg $9000,  avg qty 0,   avg cost $0
--   Eve Green(C2)     → 2 veh, avg $15000, avg qty 0,   avg cost $0
--   Charlie Davis(C3) → 2 veh, avg $30000, avg qty 0,   avg cost $0
--   Acme Auto(C4)     → 2 veh, avg $5000,  avg qty 4.5, avg cost $640 → RED (cost≥$500)