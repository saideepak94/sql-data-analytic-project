/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/


---MEASURES EXPLORATION----
  --FIND THE TOTAL SALES---
SELECT 'total_sales' AS MEASURE_VLAUE,
SUM(sales_amount) AS MEASURE_VLAUE
FROM gold.fact_sales
UNION ALL
---FIND HOW MANY ITEMS ARE SOLD---
SELECT 'ITEMS_SOLD' AS MEASURE_VLAUE,
SUM(quantity) AS MEASURE_VLAUE
FROM gold.fact_sales
UNION ALL

---FIND THE AVERAGE SELLING PRICE--
SELECT 'AVG_PRICE' AS MEASURE_VLAUE,
AVG(sls_price) AS MEASURE_VLAUE
FROM gold.fact_sales
UNION ALL

---FIND THE TOTAL ORDERS---
SELECT 'TOTAL_ORDERS' AS MEASURE_VLAUE,
COUNT(DISTINCT order_number) AS MEASURE_VLAUE
FROM gold.fact_sales
UNION ALL

--FIND THE TOTAL NUMBER OF PRODUCTS---
SELECT 'TOTAL NR. OF PRODUCTS' AS MEASURE_VLAUE,
COUNT(product_name) AS MEASURE_VLAUE
FROM gold.dim_products
UNION ALL

---FIND THE TOTAL NUMBER OF CUSTOMERS---
SELECT 'TOTAL NR. OF CUSTOMERS' AS MEASURE_VLAUE,
COUNT(customer_id) AS MEASURE_VLAUE
FROM gold.dim_customer
UNION ALL

--FIND THE TOTAL NUMBER OF CUSTOMERS WHO ARE PLACED AN ORDER---
SELECT 'TOTAL NR OF PLACED CUSOTMERS' AS MEASURE_VLAUE,
COUNT( distinct s.customer_key) AS MEASURE_VLAUE
FROM gold.fact_sales s
LEFT JOIN gold.dim_customer c
ON s.customer_key=c.customer_key

