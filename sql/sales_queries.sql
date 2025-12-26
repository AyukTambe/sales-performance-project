/*
Project: Online Retail Sales Analysis
Author: Ayuk Tambe

Dataset:
UCI Online Retail Dataset
Source: UCI Machine Learning Repository
Description: Transactional data from a UK-based online retailer (2010–2011)
Records: ~541,910
*/

-- Q1: Total revenue
SELECT
  ROUND(SUM(Quantity * UnitPrice), 2) AS total_revenue
FROM online_retail;

-- Q2: Revenue by country (top 10)
SELECT
  Country,
  ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM online_retail
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;

-- Q3: Top 10 customers by revenue
SELECT
  CustomerID,
  ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM online_retail
WHERE CustomerID IS NOT NULL AND CustomerID <> ''
GROUP BY CustomerID
ORDER BY revenue DESC
LIMIT 10;

-- Q4: Monthly revenue trend
SELECT
  substr(InvoiceDate, 1, 7) AS year_month,
  ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM online_retail
GROUP BY year_month
ORDER BY year_month;

