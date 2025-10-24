/*
===============================================================================
Magnitude Analysis
===============================================================================
Purpose:
    - To quantify data and group results by specific dimensions.
    - For understanding data distribution across categories.

SQL Functions Used:
    - Aggregate Functions: SUM(), COUNT(), AVG()
    - GROUP BY, ORDER BY
===============================================================================
*/

 SELECT
 country,
 count(customer_key) as total_customers
 FROM gold.dim_customer
 GROUP BY country
 order by total_customers DESC
 ---find total customers by gender---
  SELECT
 gender,
 count(customer_key) as total_customers
 FROM gold.dim_customer
 GROUP BY gender
 order by total_customers DESC

 ---find the total products by category---
SELECT
category,
COUNT(*) AS total_products
FROM gold.dim_products
group by category
order by total_products desc

--what is the average cost in category 
SELECT
category,
AVG(cost) AS avg_cost
FROM gold.dim_products
group by category
order by avg_cost desc
