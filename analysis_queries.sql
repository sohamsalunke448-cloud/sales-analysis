CREATE DATABASE Store;
USE Store;


SELECT * FROM superstore;

-- TOP 5 city
SELECT City,SUM(Sales) 
FROM superstore
GROUP BY City
ORDER BY SUM(Sales) DESC
LIMIT 5;

-- Top 5 State
SELECT State,SUM(Sales) 
FROM superstore
GROUP BY State
ORDER BY SUM(Sales) DESC
LIMIT 5;


-- Order Count by Ship Mode
SELECT `Ship Mode`,count(*)
FROM superstore
GROUP BY `Ship Mode`
ORDER BY COUNT(*) DESC;

-- Total Sales by Ship Mode
SELECT `Ship Mode`, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;

-- Average Sales per Order by Ship Mode
SELECT `Ship Mode`,
AVG(Sales) AS Avg_Sales
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Avg_Sales DESC;


-- Month-wise total_sales
SELECT 
MONTH(STR_TO_DATE(`Order Date`, '%d/%m/%Y')) AS Month,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY MONTH(STR_TO_DATE(`Order Date`, '%d/%m/%Y'))
ORDER BY Month;

-- Region-wise Performance
SELECT Region, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 10 Customer 
SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- Year-wise Sales Trend
SELECT 
YEAR(STR_TO_DATE(`Order Date`, '%d/%m/%Y')) AS Year,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Year
ORDER BY Year;


-- Category & Sub-Category total_sales
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT `Sub-Category`, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 10;






