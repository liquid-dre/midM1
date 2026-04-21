library(RMariaDB)

con <- dbConnect(
  RMariaDB::MariaDB(),
  dbname   = "cs6400_sp26_team015",
  host     = "127.0.0.1",
  port     = 3306,
  user     = "gatechUser",
  password = "gatech123"
)

# Helper: run a query, return a data frame
q <- function(sql) dbGetQuery(con, sql)

vehicle <- q("SELECT * FROM VehicleColor LIMIT 5;")
print(vehicle)

q("SELECT DATABASE();")
q("SHOW TABLES;")
q("SELECT COUNT(*) FROM VehicleType;")
q("SELECT COUNT(*) FROM Vehicle;")

# Avg Time in Inventory report
avg_time_in_inventory <- q("
SELECT   
VehicleType.type_name, 
  CASE 
    WHEN COUNT(Sale.vin) = 0 THEN 'N/A' 
    ELSE CAST( 
      ROUND(AVG(DATEDIFF(Sale.sale_date, Purchase.purchase_date) + 1) , 0)
      AS CHAR) 
  END AS avg_days_in_inventory 
FROM VehicleType 
LEFT JOIN Vehicle 
  ON Vehicle.vehicle_type_name = VehicleType.type_name 
LEFT JOIN Purchase 
  ON Purchase.vin = Vehicle.vin 
LEFT JOIN Sale 
  ON Sale.vin = Vehicle.vin 
GROUP BY VehicleType.type_name 
ORDER BY VehicleType.type_name ASC; 
")

print(avg_time_in_inventory)

# Monthly Sales Summary report 
monthly_sales_summary <- q("
  WITH PartsCost AS (
    SELECT
      PartsOrder.vin,
      SUM(PartsOrderLine.unit_price * PartsOrderLine.quantity)
        AS total_parts_cost
    FROM PartsOrder
    INNER JOIN PartsOrderLine
      ON PartsOrderLine.parts_order_number
       = PartsOrder.parts_order_number
    GROUP BY PartsOrder.vin
  )
  SELECT
    YEAR(Sale.sale_date)  AS sale_year,
    MONTH(Sale.sale_date) AS sale_month,
    COUNT(Sale.vin)       AS total_vehicles_sold,
    SUM(
      1.25 * Purchase.purchase_price
      + 1.10 * COALESCE(PartsCost.total_parts_cost, 0)
    ) AS gross_sales_income,
    SUM(
      0.25 * Purchase.purchase_price
      + 0.10 * COALESCE(PartsCost.total_parts_cost, 0)
    ) AS net_income
  FROM Sale
  INNER JOIN Purchase ON Purchase.vin = Sale.vin
  LEFT JOIN PartsCost ON PartsCost.vin = Sale.vin
  GROUP BY YEAR(Sale.sale_date), MONTH(Sale.sale_date)
  ORDER BY sale_year DESC, sale_month DESC;
")

print(monthly_sales_summary)

# Monthly Sales Drilldown for January 2025
monthly_sales_drilldown_202501 <- q("
  WITH PartsCost AS (
    SELECT
      PartsOrder.vin,
      SUM(PartsOrderLine.unit_price * PartsOrderLine.quantity)
        AS total_parts_cost
    FROM PartsOrder
    INNER JOIN PartsOrderLine
      ON PartsOrderLine.parts_order_number
       = PartsOrder.parts_order_number
    GROUP BY PartsOrder.vin
  )
  SELECT
    StaffUser.first_name,
    StaffUser.last_name,
    COUNT(Sale.vin)       AS vehicles_sold,
    SUM(
      1.25 * Purchase.purchase_price
      + 1.10 * COALESCE(PartsCost.total_parts_cost, 0)
    ) AS total_sales
  FROM Sale
  INNER JOIN Purchase ON Purchase.vin = Sale.vin
  INNER JOIN StaffUser
    ON StaffUser.username = Sale.sales_agent_username
  LEFT JOIN PartsCost ON PartsCost.vin = Sale.vin
  WHERE YEAR(Sale.sale_date) = 2025
    AND MONTH(Sale.sale_date) = 1
  GROUP BY StaffUser.username, StaffUser.first_name,
           StaffUser.last_name
  ORDER BY vehicles_sold DESC, total_sales DESC;
")

print(monthly_sales_drilldown_202501)

# Price per Condition Report
price_per_condition <- q("
  SELECT
    Conditions.`condition`,
    COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Convertible'
      THEN Purchase.purchase_price END), 2)), '$0') AS Convertible,
    COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Coupe'
      THEN Purchase.purchase_price END), 2)), '$0') AS Coupe,
    COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Minivan'
      THEN Purchase.purchase_price END), 2)), '$0') AS Minivan,
    COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Other'
      THEN Purchase.purchase_price END), 2)), '$0') AS Other,
    COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Sedan'
      THEN Purchase.purchase_price END), 2)), '$0') AS Sedan,
    COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'SUV'
      THEN Purchase.purchase_price END), 2)), '$0') AS SUV,
    COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Truck'
      THEN Purchase.purchase_price END), 2)), '$0') AS Truck,
    COALESCE(CONCAT('$', ROUND(AVG(CASE WHEN Vehicle.vehicle_type_name = 'Van'
      THEN Purchase.purchase_price END), 2)), '$0') AS Van
  FROM (
    SELECT 'Excellent' AS `condition` UNION ALL SELECT 'Very Good' UNION ALL
    SELECT 'Good' UNION ALL SELECT 'Fair' UNION ALL SELECT 'Rough'
  ) AS Conditions
  LEFT JOIN Vehicle ON Vehicle.`condition` = Conditions.`condition`
  LEFT JOIN Purchase ON Purchase.vin = Vehicle.vin
  GROUP BY Conditions.`condition`
  ORDER BY CASE Conditions.`condition`
    WHEN 'Excellent' THEN 1  WHEN 'Very Good' THEN 2  WHEN 'Good' THEN 3
    WHEN 'Fair' THEN 4  WHEN 'Rough' THEN 5
  END;
")

print(price_per_condition)