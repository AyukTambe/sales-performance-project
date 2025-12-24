-- Sales Performance Project
-- SQL Analysis Queries

-- Q1: Overall average sales
SELECT AVG(sales_amount) AS avg_sales_amount
FROM sales_data;

-- Q2: Top 5 reps by sales
SELECT rep_id, region, sales_amount
FROM sales_data
ORDER BY sales_amount DESC
LIMIT 5;

-- Q3: Average sales by region
SELECT region, AVG(sales_amount) AS avg_sales
FROM sales_data
GROUP BY region
ORDER BY avg_sales DESC;

-- Q4: Training vs non-training comparison
SELECT training_completed, AVG(sales_amount) AS avg_sales
FROM sales_data
GROUP BY training_completed;

-- Q5: Average sales by years of experience
SELECT years_experience, AVG(sales_amount) AS avg_sales
FROM sales_data
GROUP BY years_experience
ORDER BY years_experience;

-- Q6: Sales by call volume buckets
SELECT
  CASE
    WHEN calls_made >= 120 THEN '120+ calls'
    WHEN calls_made BETWEEN 100 AND 119 THEN '100–119 calls'
    ELSE '<100 calls'
  END AS calls_bucket,
  AVG(sales_amount) AS avg_sales
FROM sales_data
GROUP BY calls_bucket
ORDER BY avg_sales DESC;
