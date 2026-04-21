USE team15_database;

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Maserati');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('07JPETSN4PC498833', 'SPYDER', 2003, 'Excellent', 'Gas', 'AWD', 206, NULL, 'Maserati', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('07JPETSN4PC498833', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('07JPETSN4PC498833', 2235.83, '2023-03-14', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-8467164'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('07JPETSN4PC498833', '2023-06-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '567152735'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Tesla');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('087A6BFATOR453440', 'ROADSTER', 2008, 'Good', 'Gas', 'RWD', 138, 'broad wheelbase', 'Tesla', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('087A6BFATOR453440', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('087A6BFATOR453440', 7486.78, '2022-07-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '120721705'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Cadillac');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('08E1DI1NS6C115243', 'ELDORADO', 2002, 'Very Good', 'Plugin Hybrid', 'AWD', 281, 'check the Monroney sticker - theer is nothing better than this vehicle', 'Cadillac', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('08E1DI1NS6C115243', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('08E1DI1NS6C115243', 4479.90, '2023-08-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '459230738'), 'user08');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Subaru');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('0C6AL84V5KK246421', 'FORESTER', 2002, 'Fair', 'Gas', 'AWD', 394, 'supernew catalytic converter', 'Subaru', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0C6AL84V5KK246421', 'Aluminum');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0C6AL84V5KK246421', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('0C6AL84V5KK246421', 1391.03, '2023-04-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '999804645'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('0C6AL84V5KK246421', '2023-05-19', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '39-5236833'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Porsche');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('0FEWQI4E337838228', 'CAYMAN', 2014, 'Very Good', 'Battery', 'FWD', 100, 'normally aspirated', 'Porsche', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0FEWQI4E337838228', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('0FEWQI4E337838228', 8728.45, '2022-09-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '990310176'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('0FEWQI4E337838228', '2023-01-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '437076551'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nissan');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('0H7KF2IDNJB306062', 'PLATINA', 2007, 'Excellent', 'Gas', 'AWD', 327, 'high quality carburetor', 'Nissan', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0H7KF2IDNJB306062', 'Gold');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0H7KF2IDNJB306062', 'Metallic');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0H7KF2IDNJB306062', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('0H7KF2IDNJB306062', 5678.56, '2023-07-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '575967884'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lexus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('0HHX3SZUYRV656930', 'IS350', 2009, 'Excellent', 'Gas', '4WD', 161, 'sturdy side impact beams', 'Lexus', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0HHX3SZUYRV656930', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('0HHX3SZUYRV656930', 14692.46, '2022-12-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '265555004'), 'user02');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('0HHX3SZUYRV656930', '2023-08-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '459230738'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Porsche');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('0JES2I2HOUR283757', 'BOXSTER', 2006, 'Fair', 'Gas', '4WD', 227, 'modern dashboard', 'Porsche', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0JES2I2HOUR283757', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('0JES2I2HOUR283757', 3547.85, '2022-10-13', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '17-7252417'), 'user02');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('0JES2I2HOUR283757', '2023-01-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '754296432'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('0KOHAMIDMJB280989', 'CL65 AMG', 2009, 'Fair', 'Gas', 'RWD', 325, NULL, 'Mercedes-Benz', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0KOHAMIDMJB280989', 'Navy');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('0KOHAMIDMJB280989', 4562.08, '2022-07-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '003604289'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('0KOHAMIDMJB280989', '2023-01-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '520448132'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('BMW');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('0UIMMUNTR5I513788', '650I XDRIVE GRAN COUPE', 2013, 'Good', 'Gas', 'AWD', 157, 'check the Monroney sticker - theer is nothing better than this vehicle; ultra new transmission; fuel injection', 'BMW', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0UIMMUNTR5I513788', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('0UIMMUNTR5I513788', 4781.32, '2022-10-04', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '356797231'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('0UIMMUNTR5I513788', '2023-04-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '329699896'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volvo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('0UYY0K0I7AV893107', 'C70', 2008, 'Rough', 'Gas', 'RWD', 289, 'check the Monroney sticker - theer is nothing better than this vehicle; disc brake', 'Volvo', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('0UYY0K0I7AV893107', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('0UYY0K0I7AV893107', 7857.01, '2022-09-03', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '860279746'), 'user10');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('18N5235MVU2622530', 'ML55 AMG', 2003, 'Very Good', 'Gas', 'RWD', 168, 'sturdy rear axle assembly', 'Mercedes-Benz', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('18N5235MVU2622530', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('18N5235MVU2622530', 5506.59, '2022-09-29', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-0102355'), 'user02');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('18N5235MVU2622530', '2023-08-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '583230740'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Acura');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('1ETPS3NMAFH513622', 'CSX', 2009, 'Fair', 'Plugin Hybrid', '4WD', 158, NULL, 'Acura', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('1ETPS3NMAFH513622', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('1ETPS3NMAFH513622', 5196.19, '2023-01-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '085133303'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lincoln');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('1LCIYKT5JRA475172', 'MKT', 2015, 'Good', 'Fuel Cell', 'RWD', 190, 'modern dashboard; hatchback', 'Lincoln', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('1LCIYKT5JRA475172', 'Orange');
INSERT INTO VehicleColor (vin, color_name) VALUES ('1LCIYKT5JRA475172', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('1LCIYKT5JRA475172', 16764.54, '2023-06-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '860279746'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('1LCIYKT5JRA475172', '2023-08-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '737467507'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('1REUJOXJD2T955464', 'TRACKER', 2003, 'Fair', 'Gas', '4WD', 285, 'pickup', 'Chevrolet', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('1REUJOXJD2T955464', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('1REUJOXJD2T955464', 3001.77, '2022-09-09', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '16-9937771'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('1REUJOXJD2T955464', '2023-03-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '921747121'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jaguar');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('1TZ3DF2UJTA190431', 'XF', 2011, 'Rough', 'Plugin Hybrid', '4WD', 426, NULL, 'Jaguar', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('1TZ3DF2UJTA190431', 'Maroon');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('1TZ3DF2UJTA190431', 4704.84, '2023-01-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '526558813'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('1TZ3DF2UJTA190431', '2023-04-04', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '562942223'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('INFINITI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('1VBYHU34ACA814687', 'QX50', 2015, 'Excellent', 'Gas', 'RWD', 342, 'pickup', 'INFINITI', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('1VBYHU34ACA814687', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('1VBYHU34ACA814687', 4952.63, '2022-12-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '330550193'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('smart');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('25WPIF8SAKX141185', 'FORTWO', 2007, 'Rough', 'Gas', 'RWD', 112, NULL, 'smart', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('25WPIF8SAKX141185', 'Maroon');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('25WPIF8SAKX141185', 6752.75, '2023-02-09', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '89-6612313'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('25WPIF8SAKX141185', '2023-03-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '458722087'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jaguar');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('2DLWYHDZYE1017904', 'X-TYPE', 2008, 'Very Good', 'Gas', 'AWD', 247, 'safe oil ring; automatic valves', 'Jaguar', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2DLWYHDZYE1017904', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('2DLWYHDZYE1017904', 16390.66, '2023-03-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '003604289'), 'user25');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('2DLWYHDZYE1017904', '2023-08-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '505935683'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chrysler');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('2FWYG72XL3P808371', 'PT CRUISER', 2006, 'Very Good', 'Gas', 'FWD', 319, 'wide cam; pickup', 'Chrysler', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2FWYG72XL3P808371', 'Aluminum');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2FWYG72XL3P808371', 'Cream');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2FWYG72XL3P808371', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('2FWYG72XL3P808371', 2071.31, '2022-09-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '770157460'), 'user25');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('2HYIZGUWIQF039003', 'EV', 2021, 'Very Good', 'Gas', 'RWD', 113, 'high volume cylinder', 'XPeng', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2HYIZGUWIQF039003', 'Black');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2HYIZGUWIQF039003', 'Claret');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2HYIZGUWIQF039003', 'Maroon');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('2HYIZGUWIQF039003', 10016.47, '2022-08-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '207200160'), 'user10');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chrysler');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('2LY0LQQ3O87337578', 'PROWLER', 2002, 'Rough', 'Battery', 'RWD', 353, 'disc brake', 'Chrysler', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2LY0LQQ3O87337578', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('2LY0LQQ3O87337578', 1667.58, '2023-01-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '366476978'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('2LY0LQQ3O87337578', '2023-07-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '455775907'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Maserati');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('2MKA8LG040R833271', 'QUATTROPORTE', 2009, 'Very Good', 'Fuel Cell', 'AWD', 272, 'good piston', 'Maserati', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2MKA8LG040R833271', 'Rose');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2MKA8LG040R833271', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('2MKA8LG040R833271', 11690.80, '2022-12-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '923198492'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('McLaren');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('2MXZFXYFPK5303143', 'P1', 2014, 'Rough', 'Gas', 'AWD', 259, 'crankcase; best radiator', 'McLaren', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2MXZFXYFPK5303143', 'Orange');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2MXZFXYFPK5303143', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('2MXZFXYFPK5303143', 8978.61, '2023-01-31', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '83-2744154'), 'user02');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('2MXZFXYFPK5303143', '2023-03-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '389895757'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Land Rover');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('2N02SJQHISJ304978', 'RANGE ROVER SPORT', 2011, 'Rough', 'Hybrid', 'AWD', 300, 'front wheel drive; sturdy side impact beams', 'Land Rover', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('2N02SJQHISJ304978', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('2N02SJQHISJ304978', 2845.43, '2022-11-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '433383100'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('2N02SJQHISJ304978', '2023-05-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '265555004'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ferrari');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('37P7U8FZQUW335845', '599 GTB', 2011, 'Fair', 'Gas', 'RWD', 259, 'Automotive Service Excellence (ASE)', 'Ferrari', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('37P7U8FZQUW335845', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('37P7U8FZQUW335845', 13800.04, '2023-01-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '853004996'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Karma');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('3B2ABELTMYN821278', 'GS-6 PROS', 2023, 'Fair', 'Gas', 'AWD', 272, 'very hard struts', 'Karma', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('3B2ABELTMYN821278', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('3B2ABELTMYN821278', 27948.23, '2022-10-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '069880470'), 'user12');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('3DEX0DH8TAW758325', 'SILVERADO 3500 HD', 2007, 'Good', 'Battery', 'FWD', 193, 'hatchback; best suspension', 'Chevrolet', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('3DEX0DH8TAW758325', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('3DEX0DH8TAW758325', 5584.28, '2023-04-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '636710459'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('3DEX0DH8TAW758325', '2023-05-10', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '54-0450340'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Kia');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('3EFKWHDVV7K763989', 'BORREGO', 2011, 'Very Good', 'Battery', 'RWD', 103, 'minivan; oversteer', 'Kia', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('3EFKWHDVV7K763989', 'Bronze');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('3EFKWHDVV7K763989', 4974.04, '2023-07-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '708787120'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('3EFKWHDVV7K763989', '2023-07-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '940496636'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('3TQKT45OH5Y580038', 'AVALON', 2002, 'Very Good', 'Plugin Hybrid', 'RWD', 392, 'station wagon (Also known as wagon.)', 'Toyota', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('3TQKT45OH5Y580038', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('3TQKT45OH5Y580038', 1586.74, '2023-04-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '594978611'), 'user02');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Hyundai');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('4JX146RTPEP497160', 'ELANTRA GT', 2014, 'Good', 'Plugin Hybrid', 'RWD', 198, 'best sedan', 'Hyundai', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('4JX146RTPEP497160', 'Brown');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('4JX146RTPEP497160', 4928.24, '2023-02-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '093940195'), 'user10');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('4NU1XG1A1PK229738', 'P7', 2022, 'Rough', 'Hybrid', '4WD', 213, 'crankcase', 'XPeng', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('4NU1XG1A1PK229738', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('4NU1XG1A1PK229738', 8656.54, '2022-11-05', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '433383100'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('4NU1XG1A1PK229738', '2023-03-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '016043927'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MAZDA');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('4VNFJ5C41RD739427', 'CX-9', 2015, 'Rough', 'Gas', 'AWD', 368, 'best suspension', 'MAZDA', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('4VNFJ5C41RD739427', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('4VNFJ5C41RD739427', 7360.31, '2022-11-07', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '651772352'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('4VNFJ5C41RD739427', '2023-01-03', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '815705661'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Buick');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('4YH16636OI3987091', 'LUCERNE', 2010, 'Excellent', 'Gas', 'AWD', 291, 'sport utility vehicle-SUV', 'Buick', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('4YH16636OI3987091', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('4YH16636OI3987091', 11557.57, '2023-02-11', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '06-8505211'), 'user12');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Audi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('4Z1EJX6IEPX270529', 'A6', 2003, 'Fair', 'Hybrid', 'RWD', 345, 'no redline', 'Audi', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('4Z1EJX6IEPX270529', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('4Z1EJX6IEPX270529', 7870.52, '2022-10-08', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '39-5236833'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Dodge');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('53J585ZOQLS024056', 'SPRINTER 2500', 2007, 'Fair', 'Gas', 'RWD', 185, 'sturdy side impact beams; drum brake', 'Dodge', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('53J585ZOQLS024056', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('53J585ZOQLS024056', 12943.53, '2023-02-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '810084525'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('53J585ZOQLS024056', '2023-04-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '046027423'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lexus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('5DUH7JX2WMU677701', 'GS430', 2002, 'Excellent', 'Gas', '4WD', 198, 'sturdy side impact beams', 'Lexus', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('5DUH7JX2WMU677701', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('5DUH7JX2WMU677701', 4125.35, '2022-10-04', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '17-7252417'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('5DUH7JX2WMU677701', '2023-03-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '957736062'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('5JQQ7YRMKWE539035', 'S65 AMG', 2013, 'Good', 'Plugin Hybrid', 'RWD', 226, NULL, 'Mercedes-Benz', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('5JQQ7YRMKWE539035', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('5JQQ7YRMKWE539035', 5073.75, '2022-12-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '567152735'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('5JQQ7YRMKWE539035', '2023-04-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '477487143'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Honda');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('60UEB8O2X1V924211', 'PILOT', 2010, 'Good', 'Gas', 'AWD', 190, 'front wheel drive', 'Honda', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('60UEB8O2X1V924211', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('60UEB8O2X1V924211', 15580.70, '2023-04-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '811813729'), 'user13');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Subaru');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('6DOO2Y5ZN3C006211', 'IMPREZA', 2009, 'Fair', 'Gas', 'RWD', 314, 'Automotive Service Excellence (ASE)', 'Subaru', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('6DOO2Y5ZN3C006211', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('6DOO2Y5ZN3C006211', 12524.25, '2022-07-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '104689314'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('6H82UWO7Y0K320015', 'COMMANDER', 2010, 'Very Good', 'Gas', 'RWD', 267, 'overdrive', 'Jeep', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('6H82UWO7Y0K320015', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('6H82UWO7Y0K320015', 23854.62, '2022-12-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '163713671'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('6H82UWO7Y0K320015', '2023-03-25', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '54-0450340'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Cadillac');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('6NQQ1AIDBRV367914', 'STS', 2010, 'Very Good', 'Gas', 'RWD', 238, NULL, 'Cadillac', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('6NQQ1AIDBRV367914', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('6NQQ1AIDBRV367914', 2855.83, '2023-01-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '265555004'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('6NQQ1AIDBRV367914', '2023-01-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '618075000'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Porsche');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('6OTVDXLJZAB024556', 'BOXSTER', 2002, 'Fair', 'Gas', 'AWD', 181, 'manual transmission', 'Porsche', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('6OTVDXLJZAB024556', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('6OTVDXLJZAB024556', 1726.79, '2023-04-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '356797231'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('6OTVDXLJZAB024556', '2023-04-18', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '25-9301749'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nissan');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('6UGIW017LCI060007', 'SENTRA', 2002, 'Rough', 'Gas', '4WD', 297, 'innovative air bags', 'Nissan', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('6UGIW017LCI060007', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('6UGIW017LCI060007', 4328.25, '2022-07-06', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '36-8698992'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('6UQVGBLKNG5875644', 'GRAND CHEROKEE', 2003, 'Excellent', 'Gas', 'RWD', 232, 'electronic transmission', 'Jeep', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('6UQVGBLKNG5875644', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('6UQVGBLKNG5875644', 3975.72, '2023-05-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '104732900'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('6UQVGBLKNG5875644', '2023-05-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '815705661'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('7AESLJ27KQU502914', 'ASTRA', 2008, 'Very Good', 'Gas', 'RWD', 270, 'hydraulic brakes', 'Chevrolet', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('7AESLJ27KQU502914', 'Gold');
INSERT INTO VehicleColor (vin, color_name) VALUES ('7AESLJ27KQU502914', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('7AESLJ27KQU502914', 9849.06, '2023-06-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '509845808'), 'user25');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Tesla');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('7BLP2F8NFS5517675', 'ROADSTER', 2010, 'Good', 'Gas', 'AWD', 300, 'high differential; autotachometer', 'Tesla', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('7BLP2F8NFS5517675', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('7BLP2F8NFS5517675', 8265.61, '2023-07-30', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '74-9463704'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('7BLP2F8NFS5517675', '2023-08-05', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '113989044'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Land Rover');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('7BXZ04PFOSU192497', 'RANGE ROVER SPORT', 2010, 'Rough', 'Hybrid', 'AWD', 152, 'sturdy side impact beams', 'Land Rover', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('7BXZ04PFOSU192497', 'Claret');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('7BXZ04PFOSU192497', 2875.08, '2023-06-09', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '89-6612313'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('7BXZ04PFOSU192497', '2023-07-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '890097344'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('7DUND5DA2VI455102', 'TRAILBLAZER', 2005, 'Rough', 'Gas', '4WD', 277, NULL, 'Chevrolet', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('7DUND5DA2VI455102', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('7DUND5DA2VI455102', 2922.59, '2023-03-10', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '74-5457829'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('GMC');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('7EM2RFFIVOU030418', 'C5500 TOPKICK', 2008, 'Excellent', 'Hybrid', 'FWD', 302, NULL, 'GMC', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('7EM2RFFIVOU030418', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('7EM2RFFIVOU030418', 12966.97, '2023-03-16', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '36-8698992'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('7EM2RFFIVOU030418', '2023-03-22', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '42-1408737'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MINI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('7KX137K8NAD793434', 'COOPER COUNTRYMAN', 2013, 'Fair', 'Gas', 'FWD', 239, 'automatic safety features', 'MINI', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('7KX137K8NAD793434', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('7KX137K8NAD793434', 3358.33, '2022-12-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '811813729'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('7KX137K8NAD793434', '2023-06-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '984173706'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lincoln');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('7MLMMI8XWKM942519', 'NAVIGATOR', 2009, 'Good', 'Hybrid', '4WD', 371, 'automatic safety features', 'Lincoln', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('7MLMMI8XWKM942519', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('7MLMMI8XWKM942519', 13715.02, '2022-07-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '957736062'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('7MLMMI8XWKM942519', '2023-02-03', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '39-5236833'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lotus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('80F81A0SDY8687560', 'EVORA', 2014, 'Very Good', 'Gas', 'FWD', 297, 'automatic valves; disc brake', 'Lotus', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('80F81A0SDY8687560', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('80F81A0SDY8687560', 4763.62, '2022-09-07', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '575967884'), 'user25');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('80F81A0SDY8687560', '2022-10-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '562942223'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('INFINITI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('81HW4RR52L0458008', 'Q60', 2014, 'Very Good', 'Plugin Hybrid', 'AWD', 80, 'great stabilizer bar', 'INFINITI', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('81HW4RR52L0458008', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('81HW4RR52L0458008', 5797.21, '2023-06-25', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '33-5130589'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lotus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('8JLXAPL3V0W455763', 'ESPRIT', 2004, 'Good', 'Battery', 'AWD', 368, 'pickup', 'Lotus', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('8JLXAPL3V0W455763', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('8JLXAPL3V0W455763', 7377.34, '2023-06-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '304363016'), 'user04');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chrysler');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('8KFLK60K6LI157216', 'CROSSFIRE', 2006, 'Good', 'Hybrid', 'AWD', 220, NULL, 'Chrysler', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('8KFLK60K6LI157216', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('8KFLK60K6LI157216', 9093.38, '2022-12-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '093940195'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('8KFLK60K6LI157216', '2023-08-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '786458224'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Land Rover');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('8Z05OAZNX2V539073', 'DEFENDER', 2013, 'Excellent', 'Battery', 'RWD', 202, 'electronic transmission; best oil pump; supernew catalytic converter', 'Land Rover', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('8Z05OAZNX2V539073', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('8Z05OAZNX2V539073', 7691.17, '2023-08-03', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '90-7498092'), 'user18');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lincoln');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('A3MYJUR4BV5683359', 'NAVIGATOR', 2009, 'Very Good', 'Gas', 'RWD', 235, 'hatchback; hatchback', 'Lincoln', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('A3MYJUR4BV5683359', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('A3MYJUR4BV5683359', 13847.04, '2023-01-01', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-8467164'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('A3MYJUR4BV5683359', '2023-06-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '923198492'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('A801LEVAKE7060216', 'MATRIX', 2012, 'Rough', 'Gas', 'RWD', 208, 'high quality carburetor; overdrive', 'Toyota', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('A801LEVAKE7060216', 'Claret');
INSERT INTO VehicleColor (vin, color_name) VALUES ('A801LEVAKE7060216', 'Copper');
INSERT INTO VehicleColor (vin, color_name) VALUES ('A801LEVAKE7060216', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('A801LEVAKE7060216', 9324.82, '2023-06-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '626713653'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('A801LEVAKE7060216', '2023-08-04', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '015370748'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Tesla');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('AE2AOKLPFNP679714', 'X', 2014, 'Rough', 'Diesel', 'RWD', 123, 'station wagon (Also known as wagon.)', 'Tesla', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AE2AOKLPFNP679714', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('AE2AOKLPFNP679714', 6227.70, '2023-02-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '428941013'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('AE2AOKLPFNP679714', '2023-03-26', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '78-2005220'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nissan');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('AFE0T2SJB3M292600', 'MAXIMA', 2011, 'Very Good', 'Plugin Hybrid', '4WD', 409, NULL, 'Nissan', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AFE0T2SJB3M292600', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('AFE0T2SJB3M292600', 5214.99, '2022-07-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '374073318'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('AFE0T2SJB3M292600', '2023-08-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '366476978'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ford');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('AL1Q0N7Q6AF836970', 'E-250 SUPER DUTY', 2004, 'Very Good', 'Hybrid', 'FWD', 307, 'normally aspirated; fuel injection; no backfire/backfiring', 'Ford', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AL1Q0N7Q6AF836970', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('AL1Q0N7Q6AF836970', 2142.55, '2022-08-03', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '74-5457829'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('AL1Q0N7Q6AF836970', '2023-01-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '810084525'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Honda');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('AONAJJ62QFS106546', 'VT1100C SHADOW SPIRIT', 2003, 'Rough', 'Battery', 'RWD', 261, 'air filtration system', 'Honda', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AONAJJ62QFS106546', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('AONAJJ62QFS106546', 1487.94, '2023-05-06', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-8467164'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('AONAJJ62QFS106546', '2023-08-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '345988925'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('FIAT');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('AT0V5GNU4DI828588', 'DUCATO', 2014, 'Fair', 'Fuel Cell', 'RWD', 196, NULL, 'FIAT', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AT0V5GNU4DI828588', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('AT0V5GNU4DI828588', 13212.18, '2023-03-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '067561591'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ATOFM1EBV8T015290', 'CLK320', 2003, 'Good', 'Hybrid', '4WD', 400, 'four-wheel drive; best oil pump', 'Mercedes-Benz', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ATOFM1EBV8T015290', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ATOFM1EBV8T015290', 2340.89, '2023-04-05', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '42-1408737'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('ATOFM1EBV8T015290', '2023-04-11', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '15-7059236'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Acura');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ATTHVVKMWBJ298534', 'RSX', 2002, 'Excellent', 'Plugin Hybrid', 'AWD', 313, 'station wagon (Also known as wagon.)', 'Acura', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ATTHVVKMWBJ298534', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ATTHVVKMWBJ298534', 1767.00, '2023-03-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '296814584'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('ATTHVVKMWBJ298534', '2023-05-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '366476978'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Buick');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('AVDSTRV1NGB838195', 'RENDEZVOUS', 2007, 'Fair', 'Gas', '4WD', 186, 'very hard struts', 'Buick', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AVDSTRV1NGB838195', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('AVDSTRV1NGB838195', 5428.30, '2023-07-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '970763201'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('AVDSTRV1NGB838195', '2023-07-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '526558813'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Porsche');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('AVW3MNBAD6U843951', 'BOXSTER', 2015, 'Good', 'Gas', 'RWD', 168, 'oversteer; high block; oversteer', 'Porsche', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AVW3MNBAD6U843951', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('AVW3MNBAD6U843951', 5640.37, '2022-12-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '575697916'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Audi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('AXFZ0VP31ZH670485', 'A8', 2015, 'Good', 'Gas', '4WD', 220, 'coupe; can be used as sports car', 'Audi', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AXFZ0VP31ZH670485', 'Purple');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AXFZ0VP31ZH670485', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('AXFZ0VP31ZH670485', 9664.74, '2023-06-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '526558813'), 'user10');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Audi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('AY5S4SDBCC3740960', 'RS5', 2011, 'Rough', 'Gas', '4WD', 70, 'front axle assembly', 'Audi', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('AY5S4SDBCC3740960', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('AY5S4SDBCC3740960', 8969.90, '2022-12-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '770157460'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('AY5S4SDBCC3740960', '2023-03-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '183424694'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MINI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('B2JZ72LY7MS631123', 'COOPER', 2008, 'Excellent', 'Battery', 'FWD', 411, 'active safety features', 'MINI', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('B2JZ72LY7MS631123', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('B2JZ72LY7MS631123', 3982.60, '2023-01-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '628832522'), 'user18');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Land Rover');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('B2RVPIQTQU5029501', 'RANGE ROVER EVOQUE', 2012, 'Very Good', 'Gas', 'RWD', 210, 'drum brake', 'Land Rover', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('B2RVPIQTQU5029501', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('B2RVPIQTQU5029501', 5482.05, '2023-06-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '594978611'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('B2RVPIQTQU5029501', '2023-08-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '309764557'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lexus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BAHBPJ8TRXR190542', 'LS460', 2015, 'Very Good', 'Diesel', 'FWD', 229, 'no redline', 'Lexus', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BAHBPJ8TRXR190542', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BAHBPJ8TRXR190542', 15647.51, '2022-10-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '433383100'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('BAHBPJ8TRXR190542', '2023-01-17', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '54-0450340'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('BMW');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BANM4PV82W7781239', 'X6', 2009, 'Very Good', 'Plugin Hybrid', '4WD', 113, NULL, 'BMW', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BANM4PV82W7781239', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BANM4PV82W7781239', 8593.13, '2023-01-05', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '15-7059236'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('BANM4PV82W7781239', '2023-07-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '123587021'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Hyundai');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BFVL2L02Q6J297374', 'AZERA', 2010, 'Rough', 'Hybrid', 'RWD', 170, 'best suspension', 'Hyundai', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BFVL2L02Q6J297374', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BFVL2L02Q6J297374', 10316.14, '2023-02-17', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '06-8505211'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('BFVL2L02Q6J297374', '2023-04-18', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '26-2580786'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('FIAT');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Blue');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BHZ8WR6J8I0186941', 'DUCATO', 2008, 'Excellent', 'Gas', 'AWD', 111, 'crankcase', 'FIAT', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BHZ8WR6J8I0186941', 'Blue');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BHZ8WR6J8I0186941', 11127.27, '2023-01-13', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '74-5457829'), 'user22');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Bentley');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BK0HC8HZ0U6896211', 'ARNAGE', 2009, 'Fair', 'Plugin Hybrid', '4WD', 271, 'wide chassis; broad wheelbase', 'Bentley', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BK0HC8HZ0U6896211', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BK0HC8HZ0U6896211', 3037.03, '2023-01-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '636057650'), 'user19');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Cadillac');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BR0WCSGPZKQ307008', 'ESCALADE', 2008, 'Rough', 'Gas', 'AWD', 227, 'drive shaft', 'Cadillac', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BR0WCSGPZKQ307008', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BR0WCSGPZKQ307008', 3642.61, '2023-04-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '759290409'), 'user04');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('smart');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BSXYFD7API0946760', 'CITY-COUPE', 2004, 'Good', 'Gas', 'RWD', 194, 'unibody construction; all passive safety features; front axle assembly', 'smart', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BSXYFD7API0946760', 'Bronze');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BSXYFD7API0946760', 2875.53, '2023-05-18', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '83-2744154'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('BSXYFD7API0946760', '2023-06-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '754296432'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Karma');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BX1TFRAUCMT043629', 'GS-6 PROS', 2023, 'Excellent', 'Battery', 'RWD', 164, 'high volume cylinder; front axle assembly; no understeer', 'Karma', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BX1TFRAUCMT043629', 'Maroon');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BX1TFRAUCMT043629', 28035.15, '2022-07-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '913508448'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('BX1TFRAUCMT043629', '2023-05-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '104689314'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MAZDA');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Blue');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BXF3ASJHKTX822745', 'B3000', 2008, 'Excellent', 'Gas', 'AWD', 217, 'fuel injection', 'MAZDA', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BXF3ASJHKTX822745', 'Blue');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BXF3ASJHKTX822745', 5105.28, '2022-10-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '958387355'), 'user04');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Rivian');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('BYM136GK54P990225', 'R1S', 2023, 'Excellent', 'Gas', 'FWD', 278, 'innovative air bags; convertible', 'Rivian', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('BYM136GK54P990225', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('BYM136GK54P990225', 23056.24, '2022-09-28', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '74-5457829'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('BYM136GK54P990225', '2023-02-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '245644421'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Acura');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('C3ENYLKQ8AP853622', 'RDX', 2015, 'Fair', 'Hybrid', 'AWD', 51, 'normally aspirated', 'Acura', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('C3ENYLKQ8AP853622', 'Metallic');
INSERT INTO VehicleColor (vin, color_name) VALUES ('C3ENYLKQ8AP853622', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('C3ENYLKQ8AP853622', 3821.41, '2022-11-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '779636675'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('C3ENYLKQ8AP853622', '2023-06-10', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '06-8505211'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('C55GQGXHP0Y891707', 'CLK350', 2006, 'Very Good', 'Gas', 'AWD', 215, 'oversteer', 'Mercedes-Benz', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('C55GQGXHP0Y891707', 'Maroon');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('C55GQGXHP0Y891707', 6611.08, '2022-08-07', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '71-0834705'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('C55GQGXHP0Y891707', '2022-12-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '296814584'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('C5I6GRDA1LX196337', 'G9', 2023, 'Rough', 'Gas', 'RWD', 236, 'minivan', 'XPeng', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('C5I6GRDA1LX196337', 'Cream');
INSERT INTO VehicleColor (vin, color_name) VALUES ('C5I6GRDA1LX196337', 'Maroon');
INSERT INTO VehicleColor (vin, color_name) VALUES ('C5I6GRDA1LX196337', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('C5I6GRDA1LX196337', 15384.20, '2023-01-07', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '738035265'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('C5I6GRDA1LX196337', '2023-04-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '304363016'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lotus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('CHXR8I2J0M2362214', 'EXIGE', 2009, 'Good', 'Natural Gas', 'RWD', 253, 'great rpms; coupe', 'Lotus', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('CHXR8I2J0M2362214', 'Navy');
INSERT INTO VehicleColor (vin, color_name) VALUES ('CHXR8I2J0M2362214', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('CHXR8I2J0M2362214', 4632.50, '2022-08-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '009553827'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('CHXR8I2J0M2362214', '2023-02-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '737467507'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Honda');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('CILK8KOBEKV435840', 'CR250R', 2005, 'Excellent', 'Gas', 'RWD', 138, 'disc brake; anti-lock brake system (ABS); very hard struts', 'Honda', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('CILK8KOBEKV435840', 'Claret');
INSERT INTO VehicleColor (vin, color_name) VALUES ('CILK8KOBEKV435840', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('CILK8KOBEKV435840', 5475.09, '2022-11-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '520448132'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('CILK8KOBEKV435840', '2023-02-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '793767722'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Acura');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('CKBVXPE23O1840369', 'TL', 2014, 'Fair', 'Plugin Hybrid', 'RWD', 253, 'automatic safety features; rear wheel drive; crumple zones', 'Acura', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('CKBVXPE23O1840369', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('CKBVXPE23O1840369', 5376.37, '2023-08-24', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-0102355'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('CKBVXPE23O1840369', '2023-08-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '407340644'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volkswagen');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('CMI2TOM7S2T094938', 'DERBY', 2004, 'Excellent', 'Gas', '4WD', 280, 'sport utility vehicle-SUV', 'Volkswagen', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('CMI2TOM7S2T094938', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('CMI2TOM7S2T094938', 6020.54, '2022-08-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '753604797'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('CMI2TOM7S2T094938', '2022-09-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '428941013'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ford');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('CUM5114Q0C7915917', 'F650', 2006, 'Excellent', 'Gas', '4WD', 305, 'automatic valves', 'Ford', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('CUM5114Q0C7915917', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('CUM5114Q0C7915917', 4536.76, '2022-09-07', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '675015658'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mitsubishi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('D6G5OGFOYI1530826', 'CANTER FE180', 2013, 'Excellent', 'Gas', 'AWD', 258, 'wide chassis', 'Mitsubishi', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('D6G5OGFOYI1530826', 'Brown');
INSERT INTO VehicleColor (vin, color_name) VALUES ('D6G5OGFOYI1530826', 'Green');
INSERT INTO VehicleColor (vin, color_name) VALUES ('D6G5OGFOYI1530826', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('D6G5OGFOYI1530826', 3941.23, '2023-08-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '567152735'), 'user02');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Acura');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('D8VDEU0GWB2771650', 'RDX', 2013, 'Very Good', 'Hybrid', 'RWD', 229, 'high block', 'Acura', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('D8VDEU0GWB2771650', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('D8VDEU0GWB2771650', 3431.58, '2023-02-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '472719178'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('D8VDEU0GWB2771650', '2023-05-03', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '19-7723743'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Honda');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DA6NU2CRJEC205150', 'CH80 ELITE', 2004, 'Good', 'Gas', '4WD', 361, 'wide cam; no understeer; automatic transmission', 'Honda', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DA6NU2CRJEC205150', 'Navy');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DA6NU2CRJEC205150', 6993.24, '2022-07-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '067561591'), 'user12');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chrysler');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DAGO1U5HNA4115178', 'ASPEN', 2008, 'Excellent', 'Gas', 'RWD', 340, 'drum brake', 'Chrysler', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DAGO1U5HNA4115178', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DAGO1U5HNA4115178', 2668.21, '2022-11-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '520448132'), 'user04');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DB0UB3FA7IR128920', 'R63 AMG', 2007, 'Fair', 'Gas', 'RWD', 272, 'innovative air bags', 'Mercedes-Benz', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DB0UB3FA7IR128920', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DB0UB3FA7IR128920', 2809.21, '2023-06-11', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '49-8387551'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('DB0UB3FA7IR128920', '2023-07-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '822640879'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ferrari');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DDDLTOEAL4I499781', '458 ITALIA', 2011, 'Good', 'Gas', 'RWD', 135, NULL, 'Ferrari', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DDDLTOEAL4I499781', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DDDLTOEAL4I499781', 7190.17, '2022-12-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '694628160'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('DDDLTOEAL4I499781', '2022-12-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '958387355'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Karma');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DDSRT3SC6IC755465', 'GS-6', 2023, 'Excellent', 'Gas', '4WD', 238, 'rack and pinion steering; active safety features; no backfire/backfiring', 'Karma', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DDSRT3SC6IC755465', 'Beige');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DDSRT3SC6IC755465', 'Green');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DDSRT3SC6IC755465', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DDSRT3SC6IC755465', 12211.57, '2022-10-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '163713671'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('DDSRT3SC6IC755465', '2023-01-05', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '278517177'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DK77EOISMG7876504', 'P7', 2023, 'Very Good', 'Gas', 'AWD', 306, NULL, 'XPeng', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DK77EOISMG7876504', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DK77EOISMG7876504', 10082.58, '2022-08-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '106718545'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('DK77EOISMG7876504', '2022-09-22', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '89-6612313'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chrysler');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DLN8B358NL1021790', 'PACIFICA', 2004, 'Excellent', 'Gas', 'RWD', 241, 'very hard struts; no redline', 'Chrysler', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DLN8B358NL1021790', 'Rose');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DLN8B358NL1021790', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DLN8B358NL1021790', 1895.20, '2023-02-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '754296432'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('DLN8B358NL1021790', '2023-04-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '018813678'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DOD0G7FMK16806553', 'COMMANDER', 2009, 'Rough', 'Battery', 'RWD', 333, 'strong muffler', 'Jeep', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DOD0G7FMK16806553', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DOD0G7FMK16806553', 23744.01, '2022-11-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '958387355'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Cadillac');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DP2N1FFLK1Y134196', 'ESCALADE EXT', 2011, 'Excellent', 'Gas', '4WD', 326, 'Automotive Service Excellence (ASE)', 'Cadillac', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DP2N1FFLK1Y134196', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DP2N1FFLK1Y134196', 8274.70, '2022-10-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '754296432'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('BMW');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('DRTV6G2JHZT988232', 'K1200LTC', 2002, 'Fair', 'Gas', 'RWD', 122, 'unibody construction', 'BMW', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('DRTV6G2JHZT988232', 'Bronze');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('DRTV6G2JHZT988232', 4293.48, '2022-12-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '738035265'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('DRTV6G2JHZT988232', '2023-05-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '623634867'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Rivian');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('E0YFKX8BLTL142394', 'R1T TOMORROW', 2023, 'Excellent', 'Gas', 'RWD', 295, 'disc brake', 'Rivian', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('E0YFKX8BLTL142394', 'Navy');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('E0YFKX8BLTL142394', 27351.62, '2022-12-12', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '29-7932365'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('E0YFKX8BLTL142394', '2023-04-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '957736062'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('FIAT');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('E1T05PHQF4I669608', 'PANDA', 2007, 'Good', 'Gas', 'FWD', 252, 'station wagon (Also known as wagon.)', 'FIAT', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('E1T05PHQF4I669608', 'Cream');
INSERT INTO VehicleColor (vin, color_name) VALUES ('E1T05PHQF4I669608', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('E1T05PHQF4I669608', 3196.22, '2023-04-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '810084525'), 'user22');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Rivian');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('EAKQ0JX5H7Z281045', 'R1T', 2023, 'Fair', 'Gas', '4WD', 359, 'air filtration system', 'Rivian', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('EAKQ0JX5H7Z281045', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('EAKQ0JX5H7Z281045', 10975.83, '2022-09-04', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '96-4836555'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('EAKQ0JX5H7Z281045', '2023-06-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '888163974'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ferrari');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('EFN2IJTUAT1401775', '575 M MARANELLO', 2002, 'Good', 'Gas', 'AWD', 194, NULL, 'Ferrari', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('EFN2IJTUAT1401775', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('EFN2IJTUAT1401775', 1491.39, '2023-08-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '596463500'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ferrari');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ELOHA60HGW0225638', '599 GTB', 2008, 'Excellent', 'Hybrid', 'RWD', 253, 'no understeer', 'Ferrari', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ELOHA60HGW0225638', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ELOHA60HGW0225638', 12352.30, '2022-12-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '887845857'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('ELOHA60HGW0225638', '2023-06-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '069880470'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Dodge');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('EVAT53CQCL2313744', 'SPRINTER 2500', 2008, 'Very Good', 'Hybrid', '4WD', 230, 'high volume cylinder', 'Dodge', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('EVAT53CQCL2313744', 'Bronze');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('EVAT53CQCL2313744', 13989.75, '2023-05-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '770157460'), 'user08');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Land Rover');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('EYHIFQOMJDL979440', 'DISCOVERY', 2015, 'Excellent', 'Battery', '4WD', 188, NULL, 'Land Rover', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('EYHIFQOMJDL979440', 'Gold');
INSERT INTO VehicleColor (vin, color_name) VALUES ('EYHIFQOMJDL979440', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('EYHIFQOMJDL979440', 8061.27, '2023-02-12', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '52-2277642'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('EYHIFQOMJDL979440', '2023-08-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '575697916'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('F0366DY3NGP862456', 'SIENNA', 2009, 'Rough', 'Gas', 'RWD', 273, 'wide cam; best oil pump', 'Toyota', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('F0366DY3NGP862456', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('F0366DY3NGP862456', 4345.21, '2022-07-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '067561591'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('F0366DY3NGP862456', '2022-07-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '505935683'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Kia');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Blue');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('F2A8DSW1QYV603526', 'OPTIMA', 2013, 'Rough', 'Diesel', 'AWD', 183, 'rack and pinion steering', 'Kia', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('F2A8DSW1QYV603526', 'Blue');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('F2A8DSW1QYV603526', 3537.35, '2022-09-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '705835282'), 'user12');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ford');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('F3WVDO2KN32817647', 'FOCUS', 2007, 'Good', 'Plugin Hybrid', 'RWD', 164, 'sturdy rear axle assembly', 'Ford', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('F3WVDO2KN32817647', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('F3WVDO2KN32817647', 9084.95, '2022-10-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '622135209'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('F3WVDO2KN32817647', '2023-01-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '267471060'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lamborghini');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('F8PNEJV38BP709528', 'AVENTADOR', 2013, 'Excellent', 'Battery', 'AWD', 212, 'convertible', 'Lamborghini', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('F8PNEJV38BP709528', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('F8PNEJV38BP709528', 4867.21, '2023-08-11', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '71-0834705'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('F8PNEJV38BP709528', '2023-08-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '009553827'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FCJVNI6EYOP282284', 'P7', 2023, 'Good', 'Diesel', 'AWD', 191, 'front axle assembly', 'XPeng', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FCJVNI6EYOP282284', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FCJVNI6EYOP282284', 10116.00, '2023-03-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '345988925'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('FCJVNI6EYOP282284', '2023-07-22', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-8467164'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Buick');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FCT22KMD6SQ218332', 'ENCLAVE', 2013, 'Rough', 'Gas', 'AWD', 258, 'sturdy side impact beams; very hard struts; automatic safety features', 'Buick', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FCT22KMD6SQ218332', 'Bronze');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FCT22KMD6SQ218332', 10443.69, '2023-06-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '009553827'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('FCT22KMD6SQ218332', '2023-08-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '579484678'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('GMC');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FIC8GEO7P0E062013', 'YUKON XL 2500', 2007, 'Fair', 'Hybrid', 'RWD', 189, 'convertible; supernew catalytic converter', 'GMC', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FIC8GEO7P0E062013', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FIC8GEO7P0E062013', 14151.24, '2023-01-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '526558813'), 'user02');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lotus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FK7Q7XYMZUL655715', 'ESPRIT', 2002, 'Good', 'Diesel', 'AWD', 151, NULL, 'Lotus', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FK7Q7XYMZUL655715', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FK7Q7XYMZUL655715', 5172.00, '2022-07-28', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '29-7932365'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('FK7Q7XYMZUL655715', '2023-05-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '015370748'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Aston Martin');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FO8BR3L7GWC607284', 'V8 VANTAGE', 2012, 'Excellent', 'Gas', 'RWD', 315, 'anti-lock brake system (ABS)', 'Aston Martin', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FO8BR3L7GWC607284', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FO8BR3L7GWC607284', 13997.64, '2022-10-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '389895757'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('FO8BR3L7GWC607284', '2023-04-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '445469254'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FTCE5VQVNQJ191984', 'LIBERTY', 2009, 'Rough', 'Gas', 'RWD', 222, 'front axle assembly', 'Jeep', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FTCE5VQVNQJ191984', 'Black');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FTCE5VQVNQJ191984', 'Brown');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FTCE5VQVNQJ191984', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FTCE5VQVNQJ191984', 3867.06, '2023-04-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '329699896'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('BMW');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FUXRA3CIN1J359585', '330XI', 2004, 'Good', 'Diesel', 'AWD', 194, 'safe oil ring', 'BMW', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FUXRA3CIN1J359585', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FUXRA3CIN1J359585', 3606.73, '2023-02-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '459230738'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('FUXRA3CIN1J359585', '2023-06-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '628832522'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FVX5AUACR44500716', 'G55 AMG', 2004, 'Fair', 'Gas', 'RWD', 84, 'overdrive; small spark plug gap; high quality carburetor', 'Mercedes-Benz', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FVX5AUACR44500716', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FVX5AUACR44500716', 2338.25, '2023-06-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '991726229'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('FVX5AUACR44500716', '2023-08-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '458722087'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FWEFVULU0JN270172', 'FJ CRUISER', 2012, 'Rough', 'Diesel', 'FWD', 53, 'automatic transmission', 'Toyota', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FWEFVULU0JN270172', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FWEFVULU0JN270172', 6326.43, '2022-10-14', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '74-9463704'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('FWEFVULU0JN270172', '2023-03-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '779636675'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('FWXC41T1VBE544839', 'VOLT', 2012, 'Excellent', 'Plugin Hybrid', 'RWD', 193, 'great engine; Automotive Service Excellence (ASE); wide cam', 'Chevrolet', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('FWXC41T1VBE544839', 'Navy');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('FWXC41T1VBE544839', 4896.02, '2022-12-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '520448132'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('FWXC41T1VBE544839', '2023-02-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '395812025'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Dodge');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('G6I3LMORPXN360656', 'INTREPID', 2004, 'Very Good', 'Plugin Hybrid', 'FWD', 289, NULL, 'Dodge', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('G6I3LMORPXN360656', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('G6I3LMORPXN360656', 1652.71, '2022-12-11', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '74-9463704'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('G6I3LMORPXN360656', '2023-03-04', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '104689314'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Hyundai');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('G8KG7HO2EJ8944601', 'TIBURON', 2007, 'Rough', 'Gas', 'FWD', 304, 'automatic torque converter', 'Hyundai', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('G8KG7HO2EJ8944601', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('G8KG7HO2EJ8944601', 5224.85, '2023-06-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '345988925'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('G8KG7HO2EJ8944601', '2023-08-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '455741327'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MAZDA');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('GETQL1GYWI5001163', 'B2300', 2003, 'Rough', 'Battery', 'RWD', 409, 'drum brake', 'MAZDA', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GETQL1GYWI5001163', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('GETQL1GYWI5001163', 1387.89, '2022-12-21', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-8467164'), 'user19');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chrysler');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('GJRQOQ5ZD6M728549', 'ASPEN', 2008, 'Excellent', 'Hybrid', 'FWD', 183, 'safe oil ring; best radiator', 'Chrysler', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GJRQOQ5ZD6M728549', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('GJRQOQ5ZD6M728549', 2701.30, '2022-09-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '990310176'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('GJRQOQ5ZD6M728549', '2022-11-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '705835282'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lexus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('GK5K3GNG1CH730744', 'ES330', 2005, 'Very Good', 'Diesel', 'AWD', 202, 'disc brake', 'Lexus', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GK5K3GNG1CH730744', 'Copper');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GK5K3GNG1CH730744', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('GK5K3GNG1CH730744', 7454.08, '2023-03-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '737467507'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('GK5K3GNG1CH730744', '2023-07-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '837336132'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Buick');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('GMQCXSTWVCO631553', 'PARK AVENUE', 2004, 'Rough', 'Fuel Cell', 'AWD', 124, 'modern dashboard', 'Buick', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GMQCXSTWVCO631553', 'Brown');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GMQCXSTWVCO631553', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('GMQCXSTWVCO631553', 5318.91, '2023-06-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '330219073'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Cadillac');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('GOQGJ0XOFTZ166566', 'CTS', 2013, 'Fair', 'Diesel', '4WD', 345, 'active safety features', 'Cadillac', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GOQGJ0XOFTZ166566', 'Copper');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GOQGJ0XOFTZ166566', 'Maroon');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GOQGJ0XOFTZ166566', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('GOQGJ0XOFTZ166566', 4325.44, '2022-07-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '779636675'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('GOQGJ0XOFTZ166566', '2022-10-14', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '96-4836555'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('FIAT');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('GVT0E3IPLDI548031', 'PANDA', 2007, 'Very Good', 'Gas', 'RWD', 345, 'high quality carburetor', 'FIAT', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GVT0E3IPLDI548031', 'Brown');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GVT0E3IPLDI548031', 'Gold');
INSERT INTO VehicleColor (vin, color_name) VALUES ('GVT0E3IPLDI548031', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('GVT0E3IPLDI548031', 3170.92, '2023-01-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '051987519'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('GVT0E3IPLDI548031', '2023-02-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '505935683'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volkswagen');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('H5HS4CYPKMN555181', 'GOLF SPORTWAGEN', 2012, 'Excellent', 'Gas', 'FWD', 397, 'automatic torque converter', 'Volkswagen', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('H5HS4CYPKMN555181', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('H5HS4CYPKMN555181', 3716.20, '2022-12-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '676879655'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('H5HS4CYPKMN555181', '2023-01-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '654675987'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lexus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('H7VHOTCWTFW799868', 'CT200H', 2013, 'Fair', 'Hybrid', 'RWD', 212, 'disc brake; pickup', 'Lexus', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('H7VHOTCWTFW799868', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('H7VHOTCWTFW799868', 11943.63, '2022-10-04', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '96-4836555'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('H7VHOTCWTFW799868', '2023-05-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '705835282'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Dodge');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HC2MYX2JUO6050652', 'RAM 3500', 2005, 'Fair', 'Gas', 'RWD', 137, 'automatic torque converter', 'Dodge', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HC2MYX2JUO6050652', 'Brown');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HC2MYX2JUO6050652', 9083.66, '2022-07-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '395812025'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('HC2MYX2JUO6050652', '2023-07-09', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '06-8505211'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HF20A3SRV53367011', 'COMPASS', 2015, 'Very Good', 'Battery', 'AWD', 348, 'overdrive', 'Jeep', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HF20A3SRV53367011', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HF20A3SRV53367011', 9997.19, '2023-06-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '265555004'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('HF20A3SRV53367011', '2023-07-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '913508448'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HGOQEQW7NMX763582', '4RUNNER', 2003, 'Good', 'Gas', '4WD', 148, 'coupe', 'Toyota', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HGOQEQW7NMX763582', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HGOQEQW7NMX763582', 1544.81, '2023-01-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '304363016'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('HGOQEQW7NMX763582', '2023-06-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '245306752'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HKZTRDHVCFC282367', 'P7', 2023, 'Very Good', 'Fuel Cell', 'AWD', 165, 'Automotive Service Excellence (ASE); all passive safety features; very hard struts', 'XPeng', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HKZTRDHVCFC282367', 'Navy');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HKZTRDHVCFC282367', 10123.56, '2023-06-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '309764557'), 'user12');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Bentley');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HQ346HZH6BN134720', 'AZURE', 2006, 'Rough', 'Gas', 'AWD', 168, 'convertible', 'Bentley', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HQ346HZH6BN134720', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HQ346HZH6BN134720', 6834.25, '2022-12-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '940496636'), 'user19');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nio');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HQQP5MNUT63259299', 'ET7', 2021, 'Rough', 'Gas', 'AWD', 226, 'sturdy side impact beams', 'Nio', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HQQP5MNUT63259299', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HQQP5MNUT63259299', 7780.27, '2023-07-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '455775907'), 'user25');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ford');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HQTOUIQIRZK060873', 'MUSTANG', 2014, 'Rough', 'Gas', 'AWD', 388, 'ultra new transmission; unibody construction; electronic transmission', 'Ford', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HQTOUIQIRZK060873', 'Maroon');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HQTOUIQIRZK060873', 'Rust');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HQTOUIQIRZK060873', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HQTOUIQIRZK060873', 14062.53, '2022-10-11', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '42-1408737'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('HQTOUIQIRZK060873', '2022-10-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '298384247'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Karma');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HVA3BMZ4EOS741916', 'GS-6 PROS', 2023, 'Excellent', 'Natural Gas', 'RWD', 256, 'convertible', 'Karma', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HVA3BMZ4EOS741916', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HVA3BMZ4EOS741916', 27961.11, '2022-10-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '413945921'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('HVA3BMZ4EOS741916', '2023-06-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '015370748'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('FIAT');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HVJ8B3DNTCM113915', 'PALIO', 2004, 'Excellent', 'Gas', 'RWD', 272, 'unibody construction', 'FIAT', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HVJ8B3DNTCM113915', 'Cream');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HVJ8B3DNTCM113915', 'Navy');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HVJ8B3DNTCM113915', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HVJ8B3DNTCM113915', 4590.70, '2022-09-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '998974563'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('HVJ8B3DNTCM113915', '2023-01-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '605255326'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ferrari');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('HXYKUNHFST8923803', 'CALIFORNIA', 2013, 'Very Good', 'Gas', 'RWD', 202, 'station wagon (Also known as wagon.); great engine; engine displacement', 'Ferrari', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('HXYKUNHFST8923803', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('HXYKUNHFST8923803', 3787.46, '2022-10-29', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '52-2277642'), 'user02');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('HXYKUNHFST8923803', '2023-04-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '106718545'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('INFINITI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('I3KJG41FDMB799433', 'I35', 2004, 'Excellent', 'Gas', 'AWD', 218, 'power train', 'INFINITI', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('I3KJG41FDMB799433', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('I3KJG41FDMB799433', 1953.04, '2022-07-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '888163974'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('I3KJG41FDMB799433', '2022-07-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '921747121'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ICOCHNNFJ0Z168627', 'W3500 TILTMASTER', 2004, 'Fair', 'Diesel', 'AWD', 315, 'best suspension', 'Chevrolet', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ICOCHNNFJ0Z168627', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ICOCHNNFJ0Z168627', 7913.55, '2023-03-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '773845283'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nio');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('IDF5Z0PDZ3H631808', 'ES8 NEW', 2023, 'Good', 'Hybrid', '4WD', 257, 'great rpms', 'Nio', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('IDF5Z0PDZ3H631808', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('IDF5Z0PDZ3H631808', 27900.73, '2022-09-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '592787851'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('IDF5Z0PDZ3H631808', '2023-05-11', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '26-2580786'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('IQVKGGZDMG1065750', 'COMPASS', 2012, 'Fair', 'Gas', 'RWD', 176, 'best radiator', 'Jeep', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('IQVKGGZDMG1065750', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('IQVKGGZDMG1065750', 9175.23, '2023-08-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '562942223'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('IQVKGGZDMG1065750', '2023-08-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '207200160'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ram');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Blue');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ITV1P5YPWZV062241', 'RAM PICKUP', 2014, 'Very Good', 'Battery', 'FWD', 136, 'sturdy rear axle assembly', 'Ram', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ITV1P5YPWZV062241', 'Blue');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ITV1P5YPWZV062241', 9478.47, '2022-07-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '163713671'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('ITV1P5YPWZV062241', '2023-01-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '296814584'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('smart');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('IYPXWCTTJW8469109', 'CABRIO', 2004, 'Rough', 'Gas', '4WD', 282, 'safe oil ring; normally aspirated', 'smart', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('IYPXWCTTJW8469109', 'Aluminum');
INSERT INTO VehicleColor (vin, color_name) VALUES ('IYPXWCTTJW8469109', 'Navy');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('IYPXWCTTJW8469109', 1911.77, '2023-06-05', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '407340644'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Acura');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('J1VNUR4JO2K739404', 'RL', 2011, 'Fair', 'Gas', '4WD', 281, 'automatic torque converter; no backfire/backfiring; minivan', 'Acura', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J1VNUR4JO2K739404', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('J1VNUR4JO2K739404', 9959.76, '2022-12-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '330219073'), 'user12');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nio');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('J1VSB85Q0EL367386', 'ET7', 2019, 'Fair', 'Gas', 'AWD', 292, 'rear wheel drive', 'Nio', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J1VSB85Q0EL367386', 'Maroon');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('J1VSB85Q0EL367386', 6189.29, '2022-12-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '016043927'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('J1VSB85Q0EL367386', '2023-08-07', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '093940195'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('FIAT');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('J2FMAGZEZWE901493', 'PANDA', 2012, 'Rough', 'Gas', 'RWD', 172, 'high volume cylinder; automatic valves', 'FIAT', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J2FMAGZEZWE901493', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('J2FMAGZEZWE901493', 4034.18, '2023-06-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '738035265'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('J2FMAGZEZWE901493', '2023-08-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '779636675'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('McLaren');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('J37LM10Y3NL778686', 'MP4-12C', 2014, 'Very Good', 'Battery', 'AWD', 274, 'drive shaft', 'McLaren', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J37LM10Y3NL778686', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('J37LM10Y3NL778686', 3578.44, '2023-06-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '344705705'), 'user04');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('J4M3M72MAAJ880141', 'SILVERADO 2500 HD', 2004, 'Good', 'Gas', 'RWD', 191, 'best suspension', 'Chevrolet', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J4M3M72MAAJ880141', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('J4M3M72MAAJ880141', 8740.80, '2023-03-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '583230740'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('J4M3M72MAAJ880141', '2023-08-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '102270141'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('J5XDPCEM4GJ112345', 'G6', 2020, 'Rough', 'Gas', '4WD', 320, 'convertible', 'XPeng', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J5XDPCEM4GJ112345', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('J5XDPCEM4GJ112345', 13676.10, '2023-04-11', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '16-9937771'), 'user08');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MINI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('J6HNK0LSBLR804343', 'COOPER', 2002, 'Rough', 'Gas', 'AWD', 400, 'strong muffler', 'MINI', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J6HNK0LSBLR804343', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('J6HNK0LSBLR804343', 1581.78, '2023-08-21', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '91-1547193'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('J6HNK0LSBLR804343', '2023-08-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '455741327'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Bentley');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('J7GU3YIC164486632', 'CONTINENTAL', 2003, 'Good', 'Gas', 'AWD', 369, 'Automotive Service Excellence (ASE)', 'Bentley', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J7GU3YIC164486632', 'Bronze');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J7GU3YIC164486632', 'Copper');
INSERT INTO VehicleColor (vin, color_name) VALUES ('J7GU3YIC164486632', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('J7GU3YIC164486632', 2584.33, '2023-05-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '631092260'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('J7GU3YIC164486632', '2023-06-30', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '89-6612313'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nissan');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JARGZV0GPKP503199', 'PLATINA', 2009, 'Fair', 'Gas', 'AWD', 89, 'minivan; best sedan', 'Nissan', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JARGZV0GPKP503199', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JARGZV0GPKP503199', 7010.51, '2023-04-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '057287433'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('JARGZV0GPKP503199', '2023-07-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '114496235'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MINI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JCSWK7YNNU4772939', 'COOPER COUNTRYMAN', 2012, 'Very Good', 'Plugin Hybrid', 'AWD', 186, 'good gear', 'MINI', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JCSWK7YNNU4772939', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JCSWK7YNNU4772939', 3370.38, '2022-09-05', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '837336132'), 'user19');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Dodge');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JG225CRK0P7396477', 'RAM 4500', 2009, 'Good', 'Battery', 'RWD', 210, 'power train', 'Dodge', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JG225CRK0P7396477', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JG225CRK0P7396477', 3893.58, '2023-06-23', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '49-8387551'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('JG225CRK0P7396477', '2023-07-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '113989044'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Maserati');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JL574F53IWW677762', 'COUPE', 2006, 'Rough', 'Gas', 'AWD', 319, 'active safety features', 'Maserati', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JL574F53IWW677762', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JL574F53IWW677762', 2804.11, '2023-02-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '413456834'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('JL574F53IWW677762', '2023-04-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '694628160'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('INFINITI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JS888P7A266025942', 'QX56', 2008, 'Fair', 'Gas', 'AWD', 335, NULL, 'INFINITI', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JS888P7A266025942', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JS888P7A266025942', 2975.48, '2023-04-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '832718521'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('JS888P7A266025942', '2023-05-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '066821418'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('GMC');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JSD0WZ3IDPH375215', 'SAVANA 2500', 2015, 'Good', 'Gas', 'AWD', 225, 'fuel injection', 'GMC', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JSD0WZ3IDPH375215', 'Bronze');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JSD0WZ3IDPH375215', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JSD0WZ3IDPH375215', 7858.80, '2022-07-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '161600194'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('JSD0WZ3IDPH375215', '2022-08-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '413945921'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Acura');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JSLVGP64FVY255158', 'RL', 2009, 'Fair', 'Diesel', '4WD', 238, 'high torque', 'Acura', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JSLVGP64FVY255158', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JSLVGP64FVY255158', 9989.88, '2022-12-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '948800760'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('JSLVGP64FVY255158', '2023-07-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '737467507'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lamborghini');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JSTTHRDPVRV710732', 'MURCIELAGO', 2007, 'Very Good', 'Gas', 'AWD', 208, 'supernew catalytic converter', 'Lamborghini', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JSTTHRDPVRV710732', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JSTTHRDPVRV710732', 10983.21, '2023-05-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '694628160'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('JSTTHRDPVRV710732', '2023-05-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '940496636'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JWHTPH7DRQ1790129', 'GRAND CHEROKEE', 2002, 'Very Good', 'Diesel', '4WD', 342, 'great engine', 'Jeep', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JWHTPH7DRQ1790129', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JWHTPH7DRQ1790129', 3171.44, '2022-09-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '018813678'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('JWHTPH7DRQ1790129', '2023-02-09', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-0102355'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('INFINITI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('JYY1BDC2RVA780226', 'QX56', 2004, 'Very Good', 'Gas', 'RWD', 217, 'normally aspirated', 'INFINITI', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('JYY1BDC2RVA780226', 'Claret');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('JYY1BDC2RVA780226', 1711.05, '2022-09-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '298384247'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('KI47PBW0PCK969685', 'AVANZA', 2007, 'Very Good', 'Battery', 'AWD', 297, 'four-wheel drive', 'Toyota', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('KI47PBW0PCK969685', 'Bronze');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('KI47PBW0PCK969685', 7600.02, '2022-07-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '313246638'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('KI47PBW0PCK969685', '2023-06-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '071312763'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lexus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('KRP1OF566LN517977', 'GS450H', 2007, 'Very Good', 'Gas', 'RWD', 240, 'power train', 'Lexus', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('KRP1OF566LN517977', 'Brown');
INSERT INTO VehicleColor (vin, color_name) VALUES ('KRP1OF566LN517977', 'Maroon');
INSERT INTO VehicleColor (vin, color_name) VALUES ('KRP1OF566LN517977', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('KRP1OF566LN517977', 2667.99, '2023-06-03', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '445469254'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('KRP1OF566LN517977', '2023-08-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '309764557'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volvo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('KWMVI3HK6NU963190', 'XC60', 2011, 'Fair', 'Battery', 'RWD', 181, 'automatic transmission', 'Volvo', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('KWMVI3HK6NU963190', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('KWMVI3HK6NU963190', 6778.30, '2023-07-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '870969139'), 'user25');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('INFINITI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('KYCAXU240EL627124', 'QX56', 2013, 'Excellent', 'Gas', 'RWD', 176, 'unibody construction', 'INFINITI', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('KYCAXU240EL627124', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('KYCAXU240EL627124', 3482.71, '2023-04-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '940496636'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('KYCAXU240EL627124', '2023-08-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '921747121'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MINI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('L1HOHDZNBHV145467', 'COOPER', 2002, 'Rough', 'Gas', 'AWD', 171, 'sturdy rear axle assembly', 'MINI', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('L1HOHDZNBHV145467', 'Maroon');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('L1HOHDZNBHV145467', 1581.78, '2023-08-27', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '90-7498092'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('L1HOHDZNBHV145467', '2023-08-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '853004996'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volvo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Blue');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('LDK5QRMH1KY711443', 'XC70', 2003, 'Fair', 'Gas', 'RWD', 203, NULL, 'Volvo', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('LDK5QRMH1KY711443', 'Blue');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('LDK5QRMH1KY711443', 1339.66, '2023-01-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '926580668'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('LDK5QRMH1KY711443', '2023-03-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '579484678'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Aston Martin');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('LELQDTRMCRG279165', 'V8 VANTAGE', 2011, 'Excellent', 'Gas', '4WD', 234, 'fuel injection; station wagon (Also known as wagon.); very hard struts', 'Aston Martin', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('LELQDTRMCRG279165', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('LELQDTRMCRG279165', 13598.25, '2023-03-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '602353949'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('LELQDTRMCRG279165', '2023-05-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '298384247'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Hyundai');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('LGV35UW1ULO558332', 'GENESIS COUPE', 2013, 'Rough', 'Gas', 'RWD', 280, 'unibody construction', 'Hyundai', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('LGV35UW1ULO558332', 'Brown');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('LGV35UW1ULO558332', 5482.67, '2023-07-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '282876123'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('LGV35UW1ULO558332', '2023-08-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '505935683'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('GMC');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('LJ2WO6LIMI3909406', 'CANYON', 2015, 'Excellent', 'Gas', 'RWD', 125, 'overdrive; normally aspirated', 'GMC', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('LJ2WO6LIMI3909406', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('LJ2WO6LIMI3909406', 5400.35, '2022-09-07', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '069880470'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('LJ2WO6LIMI3909406', '2023-06-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '330219073'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Acura');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('LJAMX3YGRHF367786', 'MDX', 2013, 'Good', 'Battery', 'FWD', 391, 'drive shaft', 'Acura', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('LJAMX3YGRHF367786', 'Claret');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('LJAMX3YGRHF367786', 4280.69, '2022-07-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '154296138'), 'user02');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('LJAMX3YGRHF367786', '2023-01-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '207200160'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volkswagen');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('M1MDEKHT4YZ415088', 'POINTER TRUCK', 2005, 'Excellent', 'Hybrid', 'AWD', 287, 'can be used as sports car', 'Volkswagen', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('M1MDEKHT4YZ415088', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('M1MDEKHT4YZ415088', 8408.76, '2022-12-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '379751710'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('M1MDEKHT4YZ415088', '2023-02-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '356797231'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jaguar');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('M7FEZKTUSLQ658652', 'XKR-S', 2012, 'Good', 'Gas', '4WD', 192, 'check the Monroney sticker - theer is nothing better than this vehicle', 'Jaguar', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('M7FEZKTUSLQ658652', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('M7FEZKTUSLQ658652', 15103.13, '2022-10-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '623634867'), 'user19');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nissan');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ME40O4IQW48505690', 'MURANO', 2003, 'Excellent', 'Gas', 'AWD', 171, 'automatic transmission', 'Nissan', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ME40O4IQW48505690', 'Green');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ME40O4IQW48505690', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ME40O4IQW48505690', 4961.68, '2022-10-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '455741327'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('ME40O4IQW48505690', '2023-06-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '853004996'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('MHI4KIVRNPJ500772', 'G9', 2020, 'Good', 'Gas', 'AWD', 347, 'automatic valves', 'XPeng', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('MHI4KIVRNPJ500772', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('MHI4KIVRNPJ500772', 9803.42, '2023-03-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '793767722'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('MICIENJDD5Q999174', 'AVALANCHE 2500', 2002, 'Good', 'Natural Gas', 'RWD', 227, 'Automotive Service Excellence (ASE)', 'Chevrolet', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('MICIENJDD5Q999174', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('MICIENJDD5Q999174', 2861.19, '2022-12-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '773845283'), 'user19');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('GMC');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('MM825YZ686X514495', 'SIERRA DENALI', 2008, 'Excellent', 'Diesel', 'RWD', 288, NULL, 'GMC', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('MM825YZ686X514495', 'Aluminum');
INSERT INTO VehicleColor (vin, color_name) VALUES ('MM825YZ686X514495', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('MM825YZ686X514495', 10509.75, '2022-12-01', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '78-2005220'), 'user22');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mitsubishi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('MP1R6VPSU6W444223', 'FE-HD', 2004, 'Rough', 'Gas', 'AWD', 280, 'can be used as sports car', 'Mitsubishi', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('MP1R6VPSU6W444223', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('MP1R6VPSU6W444223', 3681.19, '2022-07-27', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '83-2744154'), 'user02');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lamborghini');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('MR2XCOKAHCN359862', 'GALLARDO', 2012, 'Rough', 'Gas', 'FWD', 95, 'very hard struts', 'Lamborghini', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('MR2XCOKAHCN359862', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('MR2XCOKAHCN359862', 5222.92, '2022-11-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '998974563'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('MR2XCOKAHCN359862', '2023-08-05', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '810084525'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Alfa Romeo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('MUBBDO4BEW6968551', 'GT', 2008, 'Excellent', 'Gas', 'RWD', 323, NULL, 'Alfa Romeo', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('MUBBDO4BEW6968551', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('MUBBDO4BEW6968551', 8548.09, '2023-03-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '413945921'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('MUBBDO4BEW6968551', '2023-04-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '841544478'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Buick');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('MYFEXB6J80A683292', 'LACROSSE', 2008, 'Rough', 'Plugin Hybrid', '4WD', 149, 'superturbocharger', 'Buick', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('MYFEXB6J80A683292', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('MYFEXB6J80A683292', 11128.16, '2022-12-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '013164892'), 'user22');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('N041TL677X0120634', 'SLK230', 2003, 'Good', 'Hybrid', 'AWD', 433, 'best radiator; strong muffler; oversteer', 'Mercedes-Benz', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('N041TL677X0120634', 'Bronze');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('N041TL677X0120634', 7943.15, '2023-02-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '499684568'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('N041TL677X0120634', '2023-08-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '779636675'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Rivian');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('N12FXFPCL7X458293', 'R1S NEW', 2021, 'Excellent', 'Gas', 'AWD', 130, 'innovative air bags', 'Rivian', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('N12FXFPCL7X458293', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('N12FXFPCL7X458293', 14655.56, '2022-09-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '856152797'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('N12FXFPCL7X458293', '2023-06-17', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-0102355'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chrysler');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('N33DFUSQ5TL200923', 'CIRRUS', 2005, 'Fair', 'Gas', 'AWD', 334, 'minivan; front wheel drive', 'Chrysler', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('N33DFUSQ5TL200923', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('N33DFUSQ5TL200923', 2235.79, '2023-05-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '066821418'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('N33DFUSQ5TL200923', '2023-06-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '304363016'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Hyundai');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('N445T73QPKZ254661', 'AZERA', 2007, 'Excellent', 'Gas', 'RWD', 176, NULL, 'Hyundai', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('N445T73QPKZ254661', 'Claret');
INSERT INTO VehicleColor (vin, color_name) VALUES ('N445T73QPKZ254661', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('N445T73QPKZ254661', 8512.07, '2022-08-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '045285165'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('N445T73QPKZ254661', '2023-04-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '374073318'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lincoln');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('N56QOOQRRY8687833', 'NAVIGATOR', 2011, 'Rough', 'Gas', '4WD', 305, 'hatchback', 'Lincoln', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('N56QOOQRRY8687833', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('N56QOOQRRY8687833', 13779.09, '2022-07-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '755004836'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('N56QOOQRRY8687833', '2023-03-25', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '54-0450340'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('NB8SWRCD36Z177457', 'G9', 2020, 'Good', 'Gas', '4WD', 251, 'Automotive Service Excellence (ASE)', 'XPeng', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('NB8SWRCD36Z177457', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('NB8SWRCD36Z177457', 9845.90, '2023-01-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '051987519'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('NB8SWRCD36Z177457', '2023-07-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '067561591'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nissan');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('NBYCOAHVEG4041460', 'LEAF', 2012, 'Fair', 'Gas', 'AWD', 192, 'front wheel drive', 'Nissan', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('NBYCOAHVEG4041460', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('NBYCOAHVEG4041460', 3521.67, '2023-02-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '940496636'), 'user10');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mitsubishi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('NDYSUBAQDQB032013', 'CANTER FG4X4', 2013, 'Good', 'Diesel', 'FWD', 175, 'electronic transmission', 'Mitsubishi', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('NDYSUBAQDQB032013', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('NDYSUBAQDQB032013', 10084.91, '2023-07-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '754296432'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('NDYSUBAQDQB032013', '2023-08-02', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '79-5119692'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Porsche');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('NE217XL1T4C839531', 'CAYMAN', 2011, 'Rough', 'Plugin Hybrid', '4WD', 314, 'Automotive Service Excellence (ASE)', 'Porsche', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('NE217XL1T4C839531', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('NE217XL1T4C839531', 8040.38, '2022-08-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '287742980'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('NE217XL1T4C839531', '2023-03-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '320036149'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('smart');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('NJU66JAUO8K784929', 'FORTWO', 2011, 'Fair', 'Hybrid', 'AWD', 67, 'high block', 'smart', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('NJU66JAUO8K784929', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('NJU66JAUO8K784929', 8198.39, '2023-05-05', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '29-7932365'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('NJU66JAUO8K784929', '2023-07-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '770157460'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ford');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('O2JPV528RNB316189', 'E-150', 2009, 'Good', 'Gas', 'RWD', 183, 'no backfire/backfiring', 'Ford', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('O2JPV528RNB316189', 'Bronze');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('O2JPV528RNB316189', 3590.16, '2022-10-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '753604797'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('O2JPV528RNB316189', '2023-05-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '287742980'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mitsubishi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('O6YMU5G8L2F179941', 'ECLIPSE', 2006, 'Fair', 'Plugin Hybrid', 'RWD', 259, 'safe oil ring', 'Mitsubishi', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('O6YMU5G8L2F179941', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('O6YMU5G8L2F179941', 2765.47, '2023-02-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '124211511'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('O6YMU5G8L2F179941', '2023-05-09', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '599886321'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Kia');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('OCY0COGLNMG252846', 'SPECTRA', 2004, 'Good', 'Diesel', 'RWD', 233, NULL, 'Kia', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OCY0COGLNMG252846', 'Claret');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('OCY0COGLNMG252846', 6142.71, '2022-12-04', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '592787851'), 'user25');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('OCY0COGLNMG252846', '2023-04-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '913508448'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('BMW');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('OEHOHX1J7K3285196', '750I', 2006, 'Excellent', 'Plugin Hybrid', 'AWD', 249, 'great stabilizer bar', 'BMW', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OEHOHX1J7K3285196', 'Gold');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OEHOHX1J7K3285196', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('OEHOHX1J7K3285196', 9014.08, '2023-05-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '241076456'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('OIJMG7VO2RW806249', 'RAV4', 2008, 'Fair', 'Gas', 'AWD', 161, 'high quality carburetor', 'Toyota', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OIJMG7VO2RW806249', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('OIJMG7VO2RW806249', 23236.00, '2023-03-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '499684568'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('OIJMG7VO2RW806249', '2023-08-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '631092260'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Dodge');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('OKHN8FWPCRC036542', 'GRAND CARAVAN', 2007, 'Good', 'Diesel', 'RWD', 175, 'front wheel drive', 'Dodge', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OKHN8FWPCRC036542', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('OKHN8FWPCRC036542', 3979.20, '2022-08-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '755004836'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('OKHN8FWPCRC036542', '2022-09-05', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '974539916'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Bentley');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('OPD07EW5Y63065861', 'AZURE', 2008, 'Very Good', 'Gas', 'AWD', 202, 'wide cam', 'Bentley', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OPD07EW5Y63065861', 'Purple');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OPD07EW5Y63065861', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('OPD07EW5Y63065861', 8465.42, '2022-08-04', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '562942223'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Buick');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('OR8PZSUBS7X719887', 'LACROSSE', 2013, 'Very Good', 'Gas', 'RWD', 280, 'gap; fuel injection; unibody construction', 'Buick', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OR8PZSUBS7X719887', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('OR8PZSUBS7X719887', 12746.59, '2023-08-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '618075000'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('OR8PZSUBS7X719887', '2023-08-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '770241172'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('OSEO3OI31U2553859', 'FJ CRUISER', 2009, 'Very Good', 'Gas', 'RWD', 317, 'hydraulic brakes', 'Toyota', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OSEO3OI31U2553859', 'Navy');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('OSEO3OI31U2553859', 6003.06, '2022-10-29', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '28-0102355'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('OSEO3OI31U2553859', '2023-05-07', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '605255326'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ferrari');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('OWUHWW1PGFH452996', 'F430', 2006, 'Rough', 'Battery', 'AWD', 298, 'fuel injection', 'Ferrari', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('OWUHWW1PGFH452996', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('OWUHWW1PGFH452996', 2647.19, '2022-11-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '304363016'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nissan');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('P3A3Q0W8C7Q563825', '350Z', 2007, 'Very Good', 'Gas', 'RWD', 247, 'strong muffler; best radiator', 'Nissan', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('P3A3Q0W8C7Q563825', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('P3A3Q0W8C7Q563825', 9589.09, '2022-12-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '675015658'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('P3A3Q0W8C7Q563825', '2023-06-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '860279746'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Hyundai');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('P6QE2S533IB120755', 'ELANTRA', 2008, 'Fair', 'Diesel', 'FWD', 216, 'drive shaft', 'Hyundai', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('P6QE2S533IB120755', 'Cream');
INSERT INTO VehicleColor (vin, color_name) VALUES ('P6QE2S533IB120755', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('P6QE2S533IB120755', 9937.99, '2023-01-17', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '26-2580786'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('P6QE2S533IB120755', '2023-05-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '120721705'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('P6U8HFY7QRU695920', 'E63 AMG S', 2014, 'Very Good', 'Gas', 'RWD', 295, NULL, 'Mercedes-Benz', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('P6U8HFY7QRU695920', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('P6U8HFY7QRU695920', 9596.87, '2023-06-05', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '320036149'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('P6U8HFY7QRU695920', '2023-06-08', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '42-1408737'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lamborghini');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PAJOXU27468517952', 'MURCIELAGO', 2005, 'Very Good', 'Diesel', 'FWD', 113, 'best sedan; electronic transmission', 'Lamborghini', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PAJOXU27468517952', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PAJOXU27468517952', 8277.46, '2023-05-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '477487143'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('PAJOXU27468517952', '2023-06-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '579484678'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volvo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PHZTSQLW2VE147106', 'XC70', 2005, 'Rough', 'Gas', 'RWD', 392, 'detail', 'Volvo', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PHZTSQLW2VE147106', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PHZTSQLW2VE147106', 1831.31, '2022-08-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '245644421'), 'user10');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PMS4M3PZ8HU994524', 'LIBERTY', 2006, 'Good', 'Gas', '4WD', 268, 'unibody construction', 'Jeep', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PMS4M3PZ8HU994524', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PMS4M3PZ8HU994524', 2771.24, '2022-12-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '631092260'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('PMS4M3PZ8HU994524', '2023-07-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '110533013'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Cadillac');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PN6ETFY5MTU873323', 'CTS', 2007, 'Excellent', 'Gas', 'FWD', 190, 'high volume cylinder', 'Cadillac', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PN6ETFY5MTU873323', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PN6ETFY5MTU873323', 3485.74, '2023-02-21', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '093940195'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('PN6ETFY5MTU873323', '2023-08-14', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '15-7059236'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Buick');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PRV6KSFK3P7562406', 'REGAL', 2004, 'Rough', 'Hybrid', 'AWD', 185, 'can be used as sports car', 'Buick', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PRV6KSFK3P7562406', 'Cream');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PRV6KSFK3P7562406', 'Rose');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PRV6KSFK3P7562406', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PRV6KSFK3P7562406', 8139.93, '2023-08-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '841544478'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('PRV6KSFK3P7562406', '2023-08-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '183424694'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Tesla');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PTTFTM1P45G415992', 'X', 2014, 'Excellent', 'Hybrid', '4WD', 87, 'high block', 'Tesla', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PTTFTM1P45G415992', 'Gray');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PTTFTM1P45G415992', 'Red');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PTTFTM1P45G415992', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PTTFTM1P45G415992', 6242.28, '2023-02-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '313246638'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('PTTFTM1P45G415992', '2023-05-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '575751736'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mitsubishi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PXXNQTGXC33861665', 'LANCER', 2006, 'Rough', 'Battery', 'AWD', 221, 'best sedan', 'Mitsubishi', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PXXNQTGXC33861665', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PXXNQTGXC33861665', 8905.34, '2023-02-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '329699896'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('PXXNQTGXC33861665', '2023-04-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '054035983'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Subaru');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PY8X3L1JH7A105476', 'TRIBECA', 2008, 'Fair', 'Plugin Hybrid', 'AWD', 297, NULL, 'Subaru', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PY8X3L1JH7A105476', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PY8X3L1JH7A105476', 3240.66, '2022-09-05', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '853004996'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('PY8X3L1JH7A105476', '2023-07-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '018813678'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Subaru');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PYBX8T7AXDQ513606', 'LEGACY', 2013, 'Rough', 'Gas', '4WD', 363, 'no redline', 'Subaru', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PYBX8T7AXDQ513606', 'Gold');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PYBX8T7AXDQ513606', 'Gray');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PYBX8T7AXDQ513606', 'Navy');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PYBX8T7AXDQ513606', 9151.33, '2022-11-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '086729883'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('PYTCJZMIMKW784960', 'G6', 2022, 'Fair', 'Gas', 'FWD', 296, 'four-wheel drive', 'XPeng', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('PYTCJZMIMKW784960', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('PYTCJZMIMKW784960', 18315.37, '2023-07-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '754296432'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('PYTCJZMIMKW784960', '2023-07-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '704063252'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ford');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('Q4HQR2HYEHH708463', 'ECOSPORT', 2004, 'Very Good', 'Gas', 'FWD', 363, 'broad wheelbase', 'Ford', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Q4HQR2HYEHH708463', 'Bronze');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Q4HQR2HYEHH708463', 'Maroon');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Q4HQR2HYEHH708463', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('Q4HQR2HYEHH708463', 1805.40, '2023-04-17', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '84-9674424'), 'user13');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('GMC');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('Q8OZQ2L5TUM576868', 'SAVANA 1500', 2004, 'Rough', 'Gas', 'AWD', 222, 'disc brake; front wheel drive; sturdy side impact beams', 'GMC', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Q8OZQ2L5TUM576868', 'Brown');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Q8OZQ2L5TUM576868', 'Cream');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Q8OZQ2L5TUM576868', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('Q8OZQ2L5TUM576868', 10428.24, '2023-05-15', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '96-4836555'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('Q8OZQ2L5TUM576868', '2023-05-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '617846443'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Buick');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('QBFFO51BIBW977258', 'REGAL', 2002, 'Rough', 'Gas', '4WD', 112, NULL, 'Buick', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('QBFFO51BIBW977258', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('QBFFO51BIBW977258', 5563.86, '2023-08-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '459230738'), 'user18');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volvo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('QF0LW3SD4LI269413', 'XC90', 2005, 'Very Good', 'Gas', '4WD', 324, 'disc brake; sturdy rear axle assembly', 'Volvo', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('QF0LW3SD4LI269413', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('QF0LW3SD4LI269413', 5448.18, '2022-08-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '472719178'), 'user02');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('GMC');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('QFRB7JG36TQ467046', 'ACADIA', 2007, 'Very Good', 'Gas', 'FWD', 74, 'gap', 'GMC', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('QFRB7JG36TQ467046', 'Navy');
INSERT INTO VehicleColor (vin, color_name) VALUES ('QFRB7JG36TQ467046', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('QFRB7JG36TQ467046', 3608.13, '2022-10-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '282876123'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('QFRB7JG36TQ467046', '2023-05-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '990310176'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('QI8QRWK37QY163162', 'G6', 2020, 'Rough', 'Gas', 'RWD', 179, 'best suspension; disc brake', 'XPeng', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('QI8QRWK37QY163162', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('QI8QRWK37QY163162', 13763.04, '2023-05-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '676879655'), 'user04');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Cadillac');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('QNW6SF5NCRI280556', 'DTS', 2011, 'Very Good', 'Plugin Hybrid', 'AWD', 297, 'hydraulic brakes; ultra new transmission; best possible traction', 'Cadillac', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('QNW6SF5NCRI280556', 'Green');
INSERT INTO VehicleColor (vin, color_name) VALUES ('QNW6SF5NCRI280556', 'Pink');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('QNW6SF5NCRI280556', 17359.77, '2023-06-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '837336132'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('QNW6SF5NCRI280556', '2023-08-02', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '90-7498092'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Subaru');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('QPX7602YJYL185988', 'IMPREZA', 2007, 'Fair', 'Gas', 'FWD', 179, 'great engine', 'Subaru', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('QPX7602YJYL185988', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('QPX7602YJYL185988', 10436.29, '2023-05-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '594978611'), 'user04');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('QUAAGE4JWIU586515', 'PATRIOT', 2007, 'Very Good', 'Battery', '4WD', 290, 'hatchback', 'Jeep', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('QUAAGE4JWIU586515', 'Claret');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('QUAAGE4JWIU586515', 2935.34, '2023-02-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '313246638'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('QUAAGE4JWIU586515', '2023-08-29', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '21-4734723'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volvo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('R37ZLRN60JE207579', 'V50', 2010, 'Fair', 'Battery', '4WD', 198, 'sturdy side impact beams', 'Volvo', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('R37ZLRN60JE207579', 'Maroon');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('R37ZLRN60JE207579', 8175.37, '2022-10-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '054035983'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('R6R71GALMQ1265516', 'SL550', 2007, 'Fair', 'Gas', 'RWD', 434, 'convertible; supernew catalytic converter', 'Mercedes-Benz', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('R6R71GALMQ1265516', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('R6R71GALMQ1265516', 4539.38, '2023-05-26', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '70-9793936'), 'user25');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('R6R71GALMQ1265516', '2023-07-16', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '70-9793936'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Maserati');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('R8FUQRGVB58128190', 'COUPE', 2004, 'Rough', 'Fuel Cell', 'AWD', 213, 'good gear', 'Maserati', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('R8FUQRGVB58128190', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('R8FUQRGVB58128190', 2007.03, '2022-11-18', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '79-5119692'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('R8FUQRGVB58128190', '2023-08-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '991726229'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('McLaren');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('RANYR1X34OF225773', 'MP4-12C', 2013, 'Good', 'Gas', '4WD', 193, 'engine displacement; can be used as sports car; great engine', 'McLaren', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('RANYR1X34OF225773', 'Claret');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('RANYR1X34OF225773', 3479.97, '2023-03-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '455741327'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('RANYR1X34OF225773', '2023-07-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '057287433'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Hyundai');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('REE0QD38MTO546272', 'ACCENT', 2008, 'Fair', 'Gas', 'AWD', 224, 'crankcase', 'Hyundai', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('REE0QD38MTO546272', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('REE0QD38MTO546272', 9252.75, '2023-07-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '544995534'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lotus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('RHQUA4U5I4H058567', 'EVORA', 2014, 'Good', 'Hybrid', '4WD', 374, 'normally aspirated', 'Lotus', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('RHQUA4U5I4H058567', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('RHQUA4U5I4H058567', 4739.50, '2023-06-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '320036149'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('RHQUA4U5I4H058567', '2023-08-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '304363016'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lexus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Maroon');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('RLL75KB2SDL503399', 'ES350', 2009, 'Very Good', 'Gas', 'AWD', 235, 'good piston', 'Lexus', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('RLL75KB2SDL503399', 'Maroon');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('RLL75KB2SDL503399', 6455.45, '2022-08-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '054035983'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('RLL75KB2SDL503399', '2023-01-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '120721705'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('FIAT');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('RPC2H6BY7ZQ931559', 'PALIO', 2007, 'Very Good', 'Gas', 'RWD', 265, NULL, 'FIAT', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('RPC2H6BY7ZQ931559', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('RPC2H6BY7ZQ931559', 7453.21, '2023-05-22', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '793767722'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('RPC2H6BY7ZQ931559', '2023-06-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '433383100'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lamborghini');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('RUKBZJNR8XM010336', 'GALLARDO', 2009, 'Rough', 'Battery', 'RWD', 401, 'Automotive Service Excellence (ASE)', 'Lamborghini', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('RUKBZJNR8XM010336', 'Aluminum');
INSERT INTO VehicleColor (vin, color_name) VALUES ('RUKBZJNR8XM010336', 'Copper');
INSERT INTO VehicleColor (vin, color_name) VALUES ('RUKBZJNR8XM010336', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('RUKBZJNR8XM010336', 4940.49, '2022-10-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '860279746'), 'user08');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Hyundai');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('RX7XUXNSLCL779670', 'GENESIS', 2009, 'Very Good', 'Gas', 'RWD', 287, 'small spark plug gap', 'Hyundai', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('RX7XUXNSLCL779670', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('RX7XUXNSLCL779670', 4565.48, '2023-05-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '602353949'), 'user08');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volvo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('RYBSBTRHY1H130438', 'S40', 2003, 'Excellent', 'Battery', 'RWD', 303, 'oversteer', 'Volvo', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('RYBSBTRHY1H130438', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('RYBSBTRHY1H130438', 2647.34, '2022-08-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '395812025'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('RYBSBTRHY1H130438', '2023-01-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '599886321'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MINI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('S1Y5SHJQJLB119100', 'COOPER PACEMAN', 2015, 'Good', 'Gas', 'FWD', 380, 'good gear', 'MINI', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('S1Y5SHJQJLB119100', 'Aluminum');
INSERT INTO VehicleColor (vin, color_name) VALUES ('S1Y5SHJQJLB119100', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('S1Y5SHJQJLB119100', 5090.04, '2023-06-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '520448132'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('S1Y5SHJQJLB119100', '2023-07-29', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '33-5130589'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lexus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('S5SJ5HF7FZC976453', 'RX400H', 2008, 'Excellent', 'Natural Gas', 'AWD', 151, 'great rpms', 'Lexus', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('S5SJ5HF7FZC976453', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('S5SJ5HF7FZC976453', 4270.30, '2022-11-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '738035265'), 'user08');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mitsubishi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('S6T5UW8NRJC744394', 'FE-SP', 2002, 'Fair', 'Plugin Hybrid', 'RWD', 182, 'autotachometer', 'Mitsubishi', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('S6T5UW8NRJC744394', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('S6T5UW8NRJC744394', 1669.55, '2022-10-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '544995534'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('S6T5UW8NRJC744394', '2022-12-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '104732900'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mitsubishi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('SAKWG05B4LX635123', 'GALANT', 2004, 'Rough', 'Gas', 'RWD', 70, NULL, 'Mitsubishi', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('SAKWG05B4LX635123', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('SAKWG05B4LX635123', 3566.90, '2023-07-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '753604797'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Bronze');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('SCZ0DFEFBT4123366', 'VENZA', 2013, 'Rough', 'Gas', 'AWD', 290, 'gap', 'Toyota', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('SCZ0DFEFBT4123366', 'Bronze');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('SCZ0DFEFBT4123366', 4635.26, '2023-04-16', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '96-4836555'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('SCZ0DFEFBT4123366', '2023-06-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '389895757'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('SKDCO0W4BH5158630', 'E300', 2015, 'Fair', 'Gas', 'AWD', 185, 'minivan', 'Mercedes-Benz', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('SKDCO0W4BH5158630', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('SKDCO0W4BH5158630', 4997.63, '2023-04-08', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '626713653'), 'user22');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Dodge');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('SSMWDGWS05Z520145', 'SPRINTER 2500', 2005, 'Good', 'Gas', 'RWD', 295, 'modern dashboard; hatchback', 'Dodge', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('SSMWDGWS05Z520145', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('SSMWDGWS05Z520145', 9536.47, '2022-11-13', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '42-1408737'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('SSMWDGWS05Z520145', '2023-04-19', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '89-6612313'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ram');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('SST5NYL6RZG831918', 'DAKOTA', 2012, 'Very Good', 'Gas', 'AWD', 283, 'anti-lock brake system (ABS)', 'Ram', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('SST5NYL6RZG831918', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('SST5NYL6RZG831918', 3973.84, '2022-10-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '654675987'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('SST5NYL6RZG831918', '2022-11-03', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '045285165'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('SYVHZOGUR0Z818178', 'IMPALA', 2005, 'Fair', 'Gas', 'RWD', 317, 'station wagon (Also known as wagon.)', 'Chevrolet', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('SYVHZOGUR0Z818178', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('SYVHZOGUR0Z818178', 2639.40, '2022-12-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '287742980'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('SYVHZOGUR0Z818178', '2023-04-20', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '17-6541203'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nissan');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Gold');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('SZGR47XHNTE801950', 'ALTIMA', 2011, 'Rough', 'Gas', 'RWD', 182, 'air filtration system', 'Nissan', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('SZGR47XHNTE801950', 'Gold');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('SZGR47XHNTE801950', 3801.34, '2023-03-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '477487143'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('SZGR47XHNTE801950', '2023-04-04', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '704063252'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Toyota');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('SZO84JB2HVG098562', 'PRIUS', 2002, 'Fair', 'Gas', 'FWD', 262, NULL, 'Toyota', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('SZO84JB2HVG098562', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('SZO84JB2HVG098562', 2156.56, '2023-08-07', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '102844434'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('SZO84JB2HVG098562', '2023-08-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '890097344'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ford');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('T6JE2RS5HUM089772', 'F-150', 2008, 'Very Good', 'Gas', 'AWD', 205, NULL, 'Ford', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('T6JE2RS5HUM089772', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('T6JE2RS5HUM089772', 7122.94, '2022-12-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '948800760'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('T6JE2RS5HUM089772', '2023-07-03', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '832718521'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Navy');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('T8ZYDJCVSBZ305579', 'CL600', 2008, 'Fair', 'Gas', 'AWD', 282, 'high volume cylinder; front wheel drive; hydraulic brakes', 'Mercedes-Benz', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('T8ZYDJCVSBZ305579', 'Navy');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('T8ZYDJCVSBZ305579', 8128.38, '2023-01-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '617846443'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('T8ZYDJCVSBZ305579', '2023-08-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '113989044'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jaguar');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('TCC06SUVGMB437046', 'XK', 2013, 'Fair', 'Gas', '4WD', 234, 'safe oil ring', 'Jaguar', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('TCC06SUVGMB437046', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('TCC06SUVGMB437046', 6601.75, '2022-12-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '856152797'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('TCC06SUVGMB437046', '2023-07-09', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '71-0834705'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Bentley');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('TJQJ55RQI0H014163', 'MULSANNE', 2015, 'Rough', 'Hybrid', '4WD', 310, 'can be used as sports car', 'Bentley', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('TJQJ55RQI0H014163', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('TJQJ55RQI0H014163', 5043.93, '2023-07-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '428941013'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('TJQJ55RQI0H014163', '2023-07-17', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '631092260'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Nio');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('TMLBG4XMS2E940098', 'ES9 FUTURE', 2023, 'Good', 'Hybrid', 'AWD', 146, 'great rpms', 'Nio', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('TMLBG4XMS2E940098', 'Orange');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('TMLBG4XMS2E940098', 16227.51, '2023-05-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '770241172'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Tesla');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('TS0FIULENAG000396', 'S', 2013, 'Very Good', 'Battery', 'RWD', 270, 'good piston; superturbocharger; normally aspirated', 'Tesla', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('TS0FIULENAG000396', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('TS0FIULENAG000396', 19143.11, '2023-02-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '567152735'), 'user23');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('TXTT5RIP3RV876994', 'EV', 2021, 'Good', 'Battery', 'AWD', 190, 'unibody construction', 'XPeng', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('TXTT5RIP3RV876994', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('TXTT5RIP3RV876994', 9985.48, '2023-07-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '602353949'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('TXTT5RIP3RV876994', '2023-07-18', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '79-5119692'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Alfa Romeo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('U17OFSXHSEM503736', 'GIULIETTA', 2014, 'Good', 'Gas', 'AWD', 306, 'unibody construction', 'Alfa Romeo', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('U17OFSXHSEM503736', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('U17OFSXHSEM503736', 3645.14, '2022-12-16', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '110533013'), 'user19');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('U17OFSXHSEM503736', '2022-12-28', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '737467507'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('INFINITI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Claret');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('UBTL1IWABB8760167', 'G37', 2008, 'Excellent', 'Gas', 'RWD', 270, 'can be used as sports car', 'INFINITI', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('UBTL1IWABB8760167', 'Claret');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('UBTL1IWABB8760167', 3457.79, '2023-04-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '815705661'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('UBTL1IWABB8760167', '2023-05-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '753604797'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Audi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Purple');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('UECR61IVAYH064778', 'A4', 2003, 'Very Good', 'Gas', 'RWD', 145, 'front axle assembly', 'Audi', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('UECR61IVAYH064778', 'Purple');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('UECR61IVAYH064778', 1288.46, '2023-03-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '459230738'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('UECR61IVAYH064778', '2023-08-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '356797231'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Karma');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('UFBGRLQ5VHI756367', 'GS-6 PROS', 2023, 'Fair', 'Gas', 'RWD', 184, 'electronic transmission', 'Karma', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('UFBGRLQ5VHI756367', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('UFBGRLQ5VHI756367', 28019.05, '2022-09-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '921747121'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('UFBGRLQ5VHI756367', '2023-02-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '282876123'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('UO6KJ65V1KO984814', 'GRAND CHEROKEE', 2014, 'Excellent', 'Gas', 'AWD', 85, NULL, 'Jeep', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('UO6KJ65V1KO984814', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('UO6KJ65V1KO984814', 9777.56, '2022-10-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '165324829'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('UO6KJ65V1KO984814', '2023-05-24', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '96-4836555'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('INFINITI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('UPLM5ELF8I6791396', 'Q50', 2014, 'Rough', 'Diesel', 'AWD', 179, 'power train', 'INFINITI', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('UPLM5ELF8I6791396', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('UPLM5ELF8I6791396', 24938.16, '2023-01-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '974539916'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('UPLM5ELF8I6791396', '2023-02-27', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '045285165'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('smart');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Blue');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('UROQG6S7T2M111436', 'CITY-COUPE', 2004, 'Rough', 'Gas', 'AWD', 349, NULL, 'smart', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('UROQG6S7T2M111436', 'Blue');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('UROQG6S7T2M111436', 2814.52, '2023-08-03', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '161600194'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('UROQG6S7T2M111436', '2023-08-14', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '15-7059236'), 'user03');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mitsubishi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('UUAML2S80CA861300', 'L200', 2014, 'Rough', 'Gas', 'AWD', 433, 'air filtration system; innovative air bags', 'Mitsubishi', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('UUAML2S80CA861300', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('UUAML2S80CA861300', 12193.21, '2023-06-16', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '89-6612313'), 'user25');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('UUAML2S80CA861300', '2023-08-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '575751736'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Karma');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Color (color_name) VALUES ('Pink');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('V4FC2PCIIFP457795', 'GS-6', 2023, 'Excellent', 'Battery', '4WD', 204, 'all passive safety features; four-wheel drive; active safety features', 'Karma', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('V4FC2PCIIFP457795', 'Copper');
INSERT INTO VehicleColor (vin, color_name) VALUES ('V4FC2PCIIFP457795', 'Pink');
INSERT INTO VehicleColor (vin, color_name) VALUES ('V4FC2PCIIFP457795', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('V4FC2PCIIFP457795', 12223.51, '2023-07-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '618075000'), 'user02');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('V4FC2PCIIFP457795', '2023-08-18', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '313577507'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('VBMS3KE5ODR707703', 'WRANGLER', 2012, 'Fair', 'Plugin Hybrid', 'RWD', 256, 'supernew catalytic converter', 'Jeep', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('VBMS3KE5ODR707703', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('VBMS3KE5ODR707703', 6606.58, '2022-08-26', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '379751710'), 'user25');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Audi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('VIM64SCRZAW355712', 'A8 QUATTRO', 2011, 'Very Good', 'Gas', '4WD', 185, 'very hard struts; drum brake; drive shaft', 'Audi', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('VIM64SCRZAW355712', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('VIM64SCRZAW355712', 3821.88, '2022-07-05', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '25-9301749'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('VIM64SCRZAW355712', '2022-08-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '786458224'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('INFINITI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('VKIHPHJ3C4P828776', 'Q70', 2014, 'Rough', 'Gas', '4WD', 314, NULL, 'INFINITI', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('VKIHPHJ3C4P828776', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('VKIHPHJ3C4P828776', 17274.95, '2023-05-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '329699896'), 'user12');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Alfa Romeo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('VOKGSMA74EZ148991', 'GT', 2007, 'Good', 'Plugin Hybrid', '4WD', 104, 'best possible traction', 'Alfa Romeo', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('VOKGSMA74EZ148991', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('VOKGSMA74EZ148991', 8021.46, '2023-06-04', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '36-8698992'), 'user18');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Jeep');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('VYPRV5PC07K888007', 'GRAND CHEROKEE', 2013, 'Good', 'Gas', '4WD', 235, 'autotachometer', 'Jeep', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('VYPRV5PC07K888007', 'Metallic');
INSERT INTO VehicleColor (vin, color_name) VALUES ('VYPRV5PC07K888007', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('VYPRV5PC07K888007', 9365.27, '2023-05-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '329699896'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('VYPRV5PC07K888007', '2023-06-26', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '45-3401741'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Maserati');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('W51BNA7K2XN285084', 'QUATTROPORTE', 2010, 'Excellent', 'Battery', 'AWD', 401, 'electronic transmission', 'Maserati', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('W51BNA7K2XN285084', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('W51BNA7K2XN285084', 11584.80, '2023-02-16', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '72-4659020'), 'user23');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('W51BNA7K2XN285084', '2023-04-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '057287433'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Subaru');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('WD6PXYON0WN116340', 'FORESTER', 2011, 'Good', 'Gas', 'RWD', 197, 'best radiator; wide cam', 'Subaru', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('WD6PXYON0WN116340', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('WD6PXYON0WN116340', 3979.17, '2023-01-27', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '54-0450340'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('WD6PXYON0WN116340', '2023-03-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '509845808'), 'owner');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('WN7Q6ZTFZ15317302', 'SUBURBAN 2500', 2004, 'Rough', 'Gas', 'RWD', 117, 'coupe', 'Chevrolet', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('WN7Q6ZTFZ15317302', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('WN7Q6ZTFZ15317302', 2434.77, '2022-07-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '320036149'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lamborghini');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('WVHB7F4NOZA643269', 'MURCIELAGO', 2009, 'Excellent', 'Hybrid', 'RWD', 261, 'safe oil ring; gap', 'Lamborghini', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('WVHB7F4NOZA643269', 'Aluminum');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('WVHB7F4NOZA643269', 13262.38, '2022-07-13', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '207200160'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('WVHB7F4NOZA643269', '2023-02-01', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '102270141'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lincoln');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Aluminum');
INSERT IGNORE INTO Color (color_name) VALUES ('Orange');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('WX0FPQC6EB2942468', 'MKT', 2010, 'Good', 'Fuel Cell', '4WD', 283, 'best sedan', 'Lincoln', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('WX0FPQC6EB2942468', 'Aluminum');
INSERT INTO VehicleColor (vin, color_name) VALUES ('WX0FPQC6EB2942468', 'Orange');
INSERT INTO VehicleColor (vin, color_name) VALUES ('WX0FPQC6EB2942468', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('WX0FPQC6EB2942468', 14613.21, '2023-03-04', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '83-2744154'), 'user13');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Bentley');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Blue');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('X6247MJHOOE348387', 'CONTINENTAL', 2003, 'Good', 'Battery', 'AWD', 197, 'strong muffler', 'Bentley', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('X6247MJHOOE348387', 'Blue');
INSERT INTO VehicleColor (vin, color_name) VALUES ('X6247MJHOOE348387', 'Metallic');
INSERT INTO VehicleColor (vin, color_name) VALUES ('X6247MJHOOE348387', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('X6247MJHOOE348387', 2656.83, '2022-11-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '991726229'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('X6247MJHOOE348387', '2022-12-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '018813678'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volkswagen');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('X6WRPVFAHHO956037', 'CLASICO', 2011, 'Rough', 'Gas', 'AWD', 280, 'high torque', 'Volkswagen', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('X6WRPVFAHHO956037', 'Gray');
INSERT INTO VehicleColor (vin, color_name) VALUES ('X6WRPVFAHHO956037', 'Green');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('X6WRPVFAHHO956037', 5171.42, '2023-02-07', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '124211511'), 'user25');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('X6WRPVFAHHO956037', '2023-08-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '433383100'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('smart');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('White');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('XAH1ZZICK0H241287', 'FORTWO', 2014, 'Excellent', 'Gas', 'AWD', 150, 'best sedan', 'smart', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('XAH1ZZICK0H241287', 'White');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('XAH1ZZICK0H241287', 8719.28, '2022-11-03', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '923198492'), 'user04');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('XAH1ZZICK0H241287', '2023-01-30', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '70-9793936'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('XI71LZF7WD7752134', 'E300', 2008, 'Fair', 'Gas', '4WD', 380, NULL, 'Mercedes-Benz', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('XI71LZF7WD7752134', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('XI71LZF7WD7752134', 3865.77, '2023-04-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '437076551'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('XI71LZF7WD7752134', '2023-06-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '445469254'), 'user07');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('McLaren');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Red');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('XNPAKASNCLL688769', 'MP4-12C', 2012, 'Fair', 'Gas', 'RWD', 162, 'front wheel drive; wide cam; high torque', 'McLaren', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('XNPAKASNCLL688769', 'Red');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('XNPAKASNCLL688769', 3487.25, '2023-04-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '888163974'), 'user22');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('XNPAKASNCLL688769', '2023-08-23', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '520448132'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MINI');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('XYKMLG8XUUP344979', 'COUNTRYMAN', 2011, 'Good', 'Gas', 'RWD', 382, 'automatic valves', 'MINI', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('XYKMLG8XUUP344979', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('XYKMLG8XUUP344979', 6344.45, '2023-05-25', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '445469254'), 'user16');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('XYKMLG8XUUP344979', '2023-05-29', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '509845808'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volvo');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Copper');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('XZD3ODDZSHN568131', 'S80', 2010, 'Rough', 'Plugin Hybrid', 'AWD', 136, 'super new ignition system', 'Volvo', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('XZD3ODDZSHN568131', 'Copper');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('XZD3ODDZSHN568131', 17263.40, '2022-08-15', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '183424694'), 'owner');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('XZD3ODDZSHN568131', '2023-01-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '888163974'), 'user14');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Audi');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('XZMC0PWRZ2E475596', 'A6 QUATTRO', 2014, 'Excellent', 'Gas', 'RWD', 280, 'supernew catalytic converter', 'Audi', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('XZMC0PWRZ2E475596', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('XZMC0PWRZ2E475596', 5192.96, '2022-08-02', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '984173706'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('XZMC0PWRZ2E475596', '2023-01-05', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '33-5130589'), 'user15');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volkswagen');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('Y5ZUOWR3L4K578258', 'EOS', 2008, 'Good', 'Gas', 'FWD', 411, NULL, 'Volkswagen', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Y5ZUOWR3L4K578258', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('Y5ZUOWR3L4K578258', 5465.44, '2022-10-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '596463500'), 'user10');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Buick');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Silver');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('Y8RSG1IZHE0319499', 'LACROSSE', 2011, 'Rough', 'Gas', 'AWD', 375, 'oversteer', 'Buick', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Y8RSG1IZHE0319499', 'Silver');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('Y8RSG1IZHE0319499', 12231.36, '2022-09-12', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '54-0450340'), 'user10');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('Y8RSG1IZHE0319499', '2023-03-27', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '70-9793936'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Tesla');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Turquoise');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('YADEPAQA7YM798643', 'S', 2014, 'Excellent', 'Plugin Hybrid', 'FWD', 285, NULL, 'Tesla', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('YADEPAQA7YM798643', 'Turquoise');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('YADEPAQA7YM798643', 19773.41, '2023-07-18', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '90-7498092'), 'user05');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('YADEPAQA7YM798643', '2023-08-13', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '26-2580786'), 'user06');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Chevrolet');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Gray');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('YH4QLI6I7PF517070', 'W5500HD TILTMASTER', 2005, 'Rough', 'Diesel', 'RWD', 323, 'great stabilizer bar', 'Chevrolet', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('YH4QLI6I7PF517070', 'Gray');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('YH4QLI6I7PF517070', 8375.81, '2023-04-10', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '602353949'), 'user25');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('YH4QLI6I7PF517070', '2023-05-14', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '49-8387551'), 'user24');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Land Rover');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Black');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('YIBPMS54I5D804708', 'FREELANDER', 2005, 'Very Good', 'Hybrid', '4WD', 296, 'hatchback', 'Land Rover', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('YIBPMS54I5D804708', 'Black');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('YIBPMS54I5D804708', 5805.53, '2022-08-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '245644421'), 'user18');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('YIBPMS54I5D804708', '2023-06-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '003604289'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('XPeng');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('YJWCDTAOP2Z769432', 'G6', 2022, 'Excellent', 'Hybrid', 'RWD', 134, 'wide transaxle', 'XPeng', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('YJWCDTAOP2Z769432', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('YJWCDTAOP2Z769432', 18415.26, '2022-11-24', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '395812025'), 'user18');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Rivian');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Truck');
INSERT IGNORE INTO Color (color_name) VALUES ('Rust');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('YO5VJKDIIH2781767', 'R1T TOMORROW', 2023, 'Fair', 'Plugin Hybrid', 'AWD', 260, NULL, 'Rivian', 'Truck');
INSERT INTO VehicleColor (vin, color_name) VALUES ('YO5VJKDIIH2781767', 'Rust');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('YO5VJKDIIH2781767', 27379.20, '2023-03-14', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '759290409'), 'user12');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Volkswagen');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Cream');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('YVF56XDKAW4733570', 'SHARAN', 2003, 'Rough', 'Gas', 'AWD', 328, NULL, 'Volkswagen', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('YVF56XDKAW4733570', 'Cream');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('YVF56XDKAW4733570', 3747.01, '2022-12-30', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '356797231'), 'user05');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('MAZDA');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Rose');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('YXLTW4UDO4P879868', 'CX-9', 2015, 'Very Good', 'Hybrid', 'RWD', 242, 'anti-lock brake system (ABS); best oil pump; active safety features', 'MAZDA', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('YXLTW4UDO4P879868', 'Rose');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('YXLTW4UDO4P879868', 7417.80, '2023-04-06', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '853004996'), 'user13');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('YXLTW4UDO4P879868', '2023-07-20', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '974539916'), 'user20');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('McLaren');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Other');
INSERT IGNORE INTO Color (color_name) VALUES ('Green');
INSERT IGNORE INTO Color (color_name) VALUES ('Tan');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('Z0XH5SZL8DE182621', 'P1', 2014, 'Rough', 'Hybrid', 'RWD', 208, 'pickup; anti-lock brake system (ABS)', 'McLaren', 'Other');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Z0XH5SZL8DE182621', 'Green');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Z0XH5SZL8DE182621', 'Tan');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('Z0XH5SZL8DE182621', 9008.66, '2023-02-03', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '520448132'), 'user12');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('Z0XH5SZL8DE182621', '2023-06-19', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '39-5236833'), 'user11');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Mercedes-Benz');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Convertible');
INSERT IGNORE INTO Color (color_name) VALUES ('Metallic');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('Z8OB1ZI0ID1801113', 'GLA200', 2015, 'Rough', 'Diesel', 'RWD', 172, 'best oil pump', 'Mercedes-Benz', 'Convertible');
INSERT INTO VehicleColor (vin, color_name) VALUES ('Z8OB1ZI0ID1801113', 'Metallic');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('Z8OB1ZI0ID1801113', 6865.77, '2022-08-19', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '592787851'), 'user16');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Lotus');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('SUV');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ZAGVUEDJVDC289276', 'ELISE', 2010, 'Very Good', 'Gas', 'RWD', 328, NULL, 'Lotus', 'SUV');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ZAGVUEDJVDC289276', 'Beige');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ZAGVUEDJVDC289276', 11829.36, '2023-07-21', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '96-4836555'), 'user08');
INSERT IGNORE INTO Sale (vin, sale_date, buyer_id, sales_agent_username) VALUES ('ZAGVUEDJVDC289276', '2023-08-20', (SELECT customer_id FROM BusinessCustomer WHERE tax_id = '91-1547193'), 'user21');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Ford');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Sedan');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ZANB7GHQNUL143822', 'E-450 SUPER DUTY', 2008, 'Rough', 'Battery', 'AWD', 128, 'sturdy rear axle assembly', 'Ford', 'Sedan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ZANB7GHQNUL143822', 'Brown');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ZANB7GHQNUL143822', 11106.40, '2023-05-31', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '045285165'), 'user19');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Tesla');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Minivan');
INSERT IGNORE INTO Color (color_name) VALUES ('Brown');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ZT5DFBQIT8M015828', 'X', 2015, 'Fair', 'Gas', 'RWD', 240, 'best possible traction', 'Tesla', 'Minivan');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ZT5DFBQIT8M015828', 'Brown');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ZT5DFBQIT8M015828', 6585.31, '2023-07-12', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '477487143'), 'user08');

INSERT IGNORE INTO Manufacturer (manufacturer_name) VALUES ('Maserati');
INSERT IGNORE INTO VehicleType (type_name) VALUES ('Coupe');
INSERT IGNORE INTO Color (color_name) VALUES ('Beige');
INSERT IGNORE INTO Color (color_name) VALUES ('Yellow');
INSERT IGNORE INTO Vehicle (vin, model, `year`, `condition`, fuel_type, drive_train, horse_power, notes, manufacturer_name, vehicle_type_name) VALUES ('ZVJ5RNJBJ5I318290', 'GRANTURISMO', 2014, 'Rough', 'Gas', '4WD', 326, 'check the Monroney sticker - theer is nothing better than this vehicle', 'Maserati', 'Coupe');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ZVJ5RNJBJ5I318290', 'Beige');
INSERT INTO VehicleColor (vin, color_name) VALUES ('ZVJ5RNJBJ5I318290', 'Yellow');
INSERT IGNORE INTO Purchase (vin, purchase_price, purchase_date, seller_identifier, handler_username) VALUES ('ZVJ5RNJBJ5I318290', 5119.68, '2023-04-11', (SELECT customer_id FROM IndividualCustomer WHERE ssn = '296814584'), 'user22');
