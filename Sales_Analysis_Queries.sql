-- =====================================================
-- Sales Data ETL Pipeline & Business Intelligence Dashboard
-- SQL Business Analysis Queries
-- =====================================================


-- 1. Total Sales, Cost and Profit Overview

SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Cost) AS Total_Cost,
    SUM(Profit) AS Total_Profit
FROM sales_data;


-- 2. Sales and Profit Analysis by Region

SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 3. Top 10 Products by Sales Revenue

SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 10;


-- 4. Most Profitable Products

SELECT
    Product,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Product
ORDER BY Total_Profit DESC
LIMIT 10;


-- 5. Monthly Sales Trend

SELECT
    Year,
    Month,
    SUM(Sales) AS Monthly_Sales,
    SUM(Profit) AS Monthly_Profit
FROM sales_data
GROUP BY Year, Month
ORDER BY Year, Month;


-- 6. Customer Sales Contribution

SELECT
    Customer,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Customer
ORDER BY Total_Sales DESC;


-- 7. Profit Margin Analysis

SELECT
    Product,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percentage
FROM sales_data
GROUP BY Product
ORDER BY Profit_Margin_Percentage DESC;