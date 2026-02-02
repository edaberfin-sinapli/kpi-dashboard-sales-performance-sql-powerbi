/* =========================================================
   01) DATABASE & RAW DATA
   ========================================================= */

CREATE DATABASE IF NOT EXISTS superstore_kpi;
USE superstore_kpi;

/* RAW TABLE */
DROP TABLE IF EXISTS orders_raw;

CREATE TABLE orders_raw (
  Row_ID INT,
  Order_ID VARCHAR(30),
  Order_Date VARCHAR(20),
  Ship_Date VARCHAR(20),
  Ship_Mode VARCHAR(30),
  Customer_ID VARCHAR(20),
  Customer_Name VARCHAR(100),
  Segment VARCHAR(30),
  Country VARCHAR(50),
  City VARCHAR(50),
  State VARCHAR(50),
  Postal_Code VARCHAR(20),
  Region VARCHAR(30),
  Product_ID VARCHAR(30),
  Category VARCHAR(30),
  Sub_Category VARCHAR(30),
  Product_Name VARCHAR(255),
  Sales DECIMAL(12,2)
);

/* =========================================================
   02) CLEANING LAYER
   ========================================================= */

CREATE OR REPLACE VIEW v_orders_clean AS
SELECT
  *,
  CASE
    WHEN CAST(SUBSTRING_INDEX(Order_Date, '/', 1) AS UNSIGNED) > 12
      THEN STR_TO_DATE(Order_Date, '%d/%m/%Y')
    ELSE STR_TO_DATE(Order_Date, '%m/%d/%Y')
  END AS Order_Date_Clean,
  CASE
    WHEN CAST(SUBSTRING_INDEX(Ship_Date, '/', 1) AS UNSIGNED) > 12
      THEN STR_TO_DATE(Ship_Date, '%d/%m/%Y')
    ELSE STR_TO_DATE(Ship_Date, '%m/%d/%Y')
  END AS Ship_Date_Clean
FROM orders_raw;

/* =========================================================
   03) KPI & ANALYSIS VIEWS
   ========================================================= */

CREATE OR REPLACE VIEW v_kpi_cards AS
SELECT
  SUM(Sales) AS total_sales,
  COUNT(DISTINCT Order_ID) AS total_orders,
  ROUND(SUM(Sales) / COUNT(DISTINCT Order_ID), 2) AS avg_order_value,
  COUNT(DISTINCT Customer_ID) AS total_customers,
  ROUND(SUM(Sales) / COUNT(DISTINCT Customer_ID), 2) AS avg_sales_per_customer
FROM v_orders_clean
WHERE Order_Date_Clean IS NOT NULL;

CREATE OR REPLACE VIEW v_monthly_sales AS
SELECT
  DATE_FORMAT(Order_Date_Clean, '%Y-%m-01') AS month_start,
  SUM(Sales) AS total_sales
FROM v_orders_clean
GROUP BY month_start;

CREATE OR REPLACE VIEW v_sales_by_category AS
SELECT Category, SUM(Sales) AS total_sales
FROM v_orders_clean
GROUP BY Category;

CREATE OR REPLACE VIEW v_sales_by_segment AS
SELECT Segment, SUM(Sales) AS total_sales
FROM v_orders_clean
GROUP BY Segment;

CREATE OR REPLACE VIEW v_sales_by_region AS
SELECT Region, SUM(Sales) AS total_sales
FROM v_orders_clean
GROUP BY Region;

/* =========================================================
   04) REPORTING LAYER
   ========================================================= */

CREATE DATABASE IF NOT EXISTS superstore_reporting;
USE superstore_reporting;

CREATE OR REPLACE VIEW v_kpi_cards AS SELECT * FROM superstore_kpi.v_kpi_cards;
CREATE OR REPLACE VIEW v_monthly_sales AS SELECT * FROM superstore_kpi.v_monthly_sales;
CREATE OR REPLACE VIEW v_sales_by_category AS SELECT * FROM superstore_kpi.v_sales_by_category;
CREATE OR REPLACE VIEW v_sales_by_segment AS SELECT * FROM superstore_kpi.v_sales_by_segment;
CREATE OR REPLACE VIEW v_sales_by_region AS SELECT * FROM superstore_kpi.v_sales_by_region;
