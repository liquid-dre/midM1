-- CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
CREATE USER IF NOT EXISTS gatechUser@localhost IDENTIFIED BY 'gatech123';
DROP DATABASE IF EXISTS `cs6400_sp26_team015`;
SET default_storage_engine=InnoDB;
SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS cs6400_sp26_team015
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_unicode_ci;
USE cs6400_sp26_team015;
GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'gatechUser'@'localhost';
GRANT ALL PRIVILEGES ON `gatechuser`.* TO 'gatechUser'@'localhost';
GRANT ALL PRIVILEGES ON `cs6400_sp26_team015`.* TO 'gatechUser'@'localhost';
FLUSH PRIVILEGES;

-- Tables
CREATE TABLE Manufacturer (
  manufacturer_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (manufacturer_name)
);

CREATE TABLE VehicleType (
  type_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (type_name)
);

CREATE TABLE Color (
  color_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (color_name)
);

CREATE TABLE Vehicle (
  vin           VARCHAR(17)     NOT NULL,
  model         VARCHAR(100)    NOT NULL,
  `year`        INT             NOT NULL,
  `condition`   ENUM('Excellent', 'Very Good', 'Good', 'Fair', 'Rough') NOT NULL,
  fuel_type     ENUM('Gas', 'Diesel', 'Natural Gas', 'Hybrid', 'Plugin Hybrid', 'Battery', 'Fuel Cell') NOT NULL,
  drive_train   ENUM('4WD', 'AWD', 'FWD', 'RWD') NOT NULL,
  horse_power   INT             NOT NULL,
  notes         VARCHAR(1000)   NULL,
  manufacturer_name  VARCHAR(50)     NOT NULL,
  vehicle_type_name     VARCHAR(50)     NOT NULL,
  PRIMARY KEY (vin),
  CONSTRAINT fk_Vehicle_manufacturer_Manufacturer_manufacturer_name
    FOREIGN KEY (manufacturer_name) REFERENCES Manufacturer (manufacturer_name),
  CONSTRAINT fk_Vehicle_vehicle_type_name_VehicleType_type_name
    FOREIGN KEY (vehicle_type_name) REFERENCES VehicleType (type_name)
);

CREATE TABLE VehicleColor (
  vin           VARCHAR(17) NOT NULL,
  color_name    VARCHAR(50) NOT NULL,
  PRIMARY KEY (vin, color_name),
  CONSTRAINT fk_VehicleColor_vin_Vehicle_vin
    FOREIGN KEY (vin) REFERENCES Vehicle (vin),
  CONSTRAINT fk_VehicleColor_color_name_Color_color_name
    FOREIGN KEY (color_name) REFERENCES Color (color_name)
);

CREATE TABLE Vendor (
    vendor_name VARCHAR(40) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    `state` VARCHAR(15) NOT NULL,
    city VARCHAR(25) NOT NULL,
    street VARCHAR(50) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    PRIMARY KEY (vendor_name)
);

CREATE TABLE PartsOrder (
    parts_order_number VARCHAR(21) NOT NULL,
    order_ordinal INT NOT NULL,
    vin VARCHAR(17) NOT NULL,
    vendor_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (parts_order_number),
    CONSTRAINT fk_PartsOrder_vin_Vehicle_vin
        FOREIGN KEY (vin)
        REFERENCES Vehicle(vin),
    CONSTRAINT fk_PartsOrder_vendor_name_Vendor_vendor_name
        FOREIGN KEY (vendor_name)
        REFERENCES Vendor(vendor_name)
);

-- parts_order_num = parts_order_number. Abbreviation needed to meet 64 characters limit for FK names
CREATE TABLE PartsOrderLine (
    vendor_part_number VARCHAR(20) NOT NULL,
    `description` VARCHAR(150) NOT NULL,
    `status` ENUM('Ordered', 'Received', 'Installed') NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    parts_order_number VARCHAR(21) NOT NULL,
    PRIMARY KEY (vendor_part_number, parts_order_number),
    CONSTRAINT fk_PartsOrderLine_parts_order_num_PartsOrder_parts_order_num
        FOREIGN KEY (parts_order_number)
        REFERENCES PartsOrder(parts_order_number)
        ON DELETE CASCADE
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    state VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    street VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL
);

CREATE TABLE IndividualCustomer (
    customer_id INT PRIMARY KEY,
    ssn VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    CONSTRAINT fk_IndividualCustomer_customer_id_Customer_customer_id
    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
    ON DELETE CASCADE
);

CREATE TABLE BusinessCustomer (
    customer_id INT PRIMARY KEY,
    tax_id VARCHAR(50) UNIQUE NOT NULL,
    business_name VARCHAR(100) NOT NULL,
    primary_contact_title VARCHAR(50) NOT NULL,
    primary_contact_first_name VARCHAR(50) NOT NULL,
    primary_contact_last_name VARCHAR(50) NOT NULL,
    CONSTRAINT fk_BusinessCustomer_customer_id_Customer_customer_id
    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
    ON DELETE CASCADE
);

CREATE TABLE StaffUser (
    username VARCHAR(50) NOT NULL,
    password_plaintext VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (username)
);

CREATE TABLE AcquisitionSpecialist (
    username VARCHAR(50) NOT NULL,
    PRIMARY KEY (username),
    CONSTRAINT fk_AcquisitionSpecialist_username_StaffUser_username
        FOREIGN KEY (username)
        REFERENCES StaffUser(username)
);

CREATE TABLE SalesAgent (
    username VARCHAR(50) NOT NULL,
    PRIMARY KEY (username),
    CONSTRAINT fk_SalesAgent_username_StaffUser_username
        FOREIGN KEY (username)
        REFERENCES StaffUser(username)
);

CREATE TABLE OperatingManager (
    username VARCHAR(50) NOT NULL,
    PRIMARY KEY (username),
    CONSTRAINT fk_OperatingManager_username_StaffUser_username
        FOREIGN KEY (username)
        REFERENCES StaffUser(username)
);

-- uname = username. Abbreviation needed to meet 64 characters limit for FK names
CREATE TABLE Purchase (
    vin VARCHAR(17) NOT NULL,
    purchase_price DECIMAL(10,2) NOT NULL,
    purchase_date DATE NOT NULL,
    seller_identifier INT NOT NULL,
    handler_username VARCHAR(50) NOT NULL,
    PRIMARY KEY (vin),
    CONSTRAINT fk_Purchase_vin_Vehicle_vin
        FOREIGN KEY (vin)
        REFERENCES Vehicle(vin),
    CONSTRAINT fk_Purchase_handler_uname_AcquisitionSpecialist_uname
        FOREIGN KEY (handler_username)
        REFERENCES AcquisitionSpecialist(username),
    CONSTRAINT fk_Purchase_seller_identifier_Customer_customer_id
        FOREIGN KEY (seller_identifier)
        REFERENCES Customer(customer_id)
);

CREATE TABLE Sale (
    vin VARCHAR(17) NOT NULL,
    sale_date DATE NOT NULL,
    buyer_id INT NOT NULL,
    sales_agent_username VARCHAR(50) NOT NULL,
    PRIMARY KEY (vin),
    CONSTRAINT fk_Sale_vin_Vehicle_vin
        FOREIGN KEY (vin)
        REFERENCES Vehicle(vin),
    CONSTRAINT fk_Sale_buyer_id_Customer_customer_id
        FOREIGN KEY (buyer_id)
        REFERENCES Customer(customer_id),
    CONSTRAINT fk_Sale_sales_agent_username_SalesAgent_username
        FOREIGN KEY (sales_agent_username)
        REFERENCES SalesAgent(username)
);
