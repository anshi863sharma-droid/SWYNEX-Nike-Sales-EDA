create database nike_sales;
use nike_sales;

SHOW TABLES;

SELECT *
FROM Nike_Sales_Cleaned_dataset
LIMIT 10;

select count(*)
from Nike_Sales_Cleaned_dataset;
 
 --- calculate profit by product line ---
 
USE nike_sales;

SELECT
Product_Line,
SUM(Profit) AS Total_Profit
FROM Nike_Sales_Cleaned_dataset
GROUP BY Product_Line
ORDER BY Total_Profit DESC;

--- Profit by region ---
 select 
 Region,
 SUM(Profit) AS Total_Profit
 from Nike_Sales_Cleaned_dataset
 group by Region
 Order by Total_Profit DESC;
 
