create database Amazon_sales_analysis;
Use Amazon_sales_analysis;

select * from Amazon_sales;

select count(*) from amazon_sales;


-- Total Sales Revenue:

SELECT Round(SUM(Total_Revenue),2) AS Total_Sales_Revenue FROM Amazon_sales;


-- Total Sales Cost:

SELECT SUM(Total_Cost) AS Total_Sales_Cost FROM Amazon_sales;


-- Total Sales Profit:

SELECT SUM(Total_Profit) AS Total_Sales_Profit FROM Amazon_sales;


-- Average Order Value:

SELECT AVG(Total_Revenue) AS Average_Order_Value FROM Amazon_sales;


-- Total Units Sold:

SELECT SUM(Units_Sold) AS Total_Units_Sold FROM Amazon_sales;


-- Average Unit Price:

SELECT AVG(Unit_Price) AS Average_Unit_Price FROM Amazon_sales;


-- Average Unit Cost:

SELECT AVG(Unit_Cost) AS Average_Unit_Cost FROM Amazon_sales;


-- Total Revenue by Region:

SELECT Region, SUM(Total_Revenue) AS Total_Revenue FROM Amazon_sales GROUP BY Region;


-- Total Revenue by Country:

SELECT Country, SUM(Total_Revenue) AS Total_Revenue FROM Amazon_sales GROUP BY Country;


-- Total Profit by Item Type:

SELECT Item_Type, SUM(Total_Profit) AS Total_Profit FROM Amazon_sales GROUP BY Item_Type;


-- Top 5 Items by Total Revenue:

SELECT Item_Type, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Item_Type
ORDER BY Total_Revenue DESC
LIMIT 5;


-- Sales Trend by Month:

SELECT Year, Month, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Year, Month
ORDER BY Year, Month;


-- Total Sales Revenue by Sales Channel:

SELECT Sales_Channel, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Sales_Channel;


-- Profit Margin by Item Type:

SELECT Item_Type, (SUM(Total_Profit) / SUM(Total_Revenue)) * 100 AS Profit_Margin
FROM Amazon_sales
GROUP BY Item_Type;


-- Top 10 Countries by Total Sales Revenue:

SELECT Country, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Country
ORDER BY Total_Revenue DESC
LIMIT 10;


-- Total Profit by Year:

SELECT Year, SUM(Total_Profit) AS Total_Profit
FROM Amazon_sales
GROUP BY Year;


-- Average Sales Revenue per Order:

SELECT AVG(Total_Revenue) AS Average_Sales_Revenue_Per_Order
FROM Amazon_sales;


-- Total Sales Revenue by Order Priority:

SELECT Order_Priority, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Order_Priority;


-- Top 5 Regions by Total Profit:

SELECT Region, SUM(Total_Profit) AS Total_Profit
FROM Amazon_sales
GROUP BY Region
ORDER BY Total_Profit DESC
LIMIT 5;


-- Sales Revenue by Month and Year:

SELECT Year, Month, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Year, Month
ORDER BY Year, Month;


-- Percentage Change in Total Revenue Year-over-Year:

SELECT Year,
       (SUM(Total_Revenue) - LAG(SUM(Total_Revenue)) OVER (ORDER BY Year)) / LAG(SUM(Total_Revenue)) OVER (ORDER BY Year) * 100 AS Percentage_Change
FROM Amazon_sales
GROUP BY Year;


-- Sales Revenue by Order Date:

SELECT Order_Date, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Order_Date;


-- Average Profit per Item Type:

SELECT Item_Type, AVG(Total_Profit) AS Average_Profit
FROM Amazon_sales
GROUP BY Item_Type;


-- Top 5 Countries by Average Order Value:

SELECT Country, AVG(Total_Revenue) AS Average_Order_Value
FROM Amazon_sales
GROUP BY Country
ORDER BY Average_Order_Value DESC
LIMIT 5;


-- Total Sales Revenue by Item Type and Region:

SELECT Region, Item_Type, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Region, Item_Type;


-- Total Profit by Sales Channel:

SELECT Sales_Channel, SUM(Total_Profit) AS Total_Profit
FROM Amazon_sales
GROUP BY Sales_Channel;


-- Total Sales Revenue by Order Priority and Sales Channel:

SELECT Order_Priority, Sales_Channel, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Order_Priority, Sales_Channel;


-- Top 5 Items by Total Units Sold:

SELECT Item_Type, SUM(Units_Sold) AS Total_Units_Sold
FROM Amazon_sales
GROUP BY Item_Type
ORDER BY Total_Units_Sold DESC
LIMIT 5;


-- Total Sales Revenue by Quarter:

SELECT Year, QUARTER(STR_TO_DATE(Order_Date, '%d-%m-%Y')) AS Quarter, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Year, Quarter
ORDER BY Year, Quarter;


-- Average Units Sold by Item Type:

SELECT Item_Type, AVG(Units_Sold) AS Average_Units_Sold
FROM Amazon_sales
GROUP BY Item_Type;


-- Total Profit by Sales Channel and Item Type:

SELECT Sales_Channel, Item_Type, SUM(Total_Profit) AS Total_Profit
FROM Amazon_sales
GROUP BY Sales_Channel, Item_Type;


-- Top 10 Orders by Total Revenue:

SELECT Order_ID, Total_Revenue
FROM Amazon_sales
ORDER BY Total_Revenue DESC
LIMIT 10;


-- Total Revenue by Region and Order Priority:

SELECT Region, Order_Priority, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Region, Order_Priority;


-- Average Profit Margin by Sales Channel:

SELECT Sales_Channel, AVG((Total_Profit / Total_Revenue) * 100) AS Average_Profit_Margin
FROM Amazon_sales
GROUP BY Sales_Channel;


-- Top 5 Countries by Average Unit Price:

SELECT Country, AVG(Unit_Price) AS Average_Unit_Price
FROM Amazon_sales
GROUP BY Country
ORDER BY Average_Unit_Price DESC
LIMIT 5;


-- Total Revenue by Item Type and Order Priority:

SELECT Item_Type, Order_Priority, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Item_Type, Order_Priority;


-- Percentage of Total Revenue by Region:

SELECT Region, 
       (SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM Amazon_sales)) * 100 AS Percentage_Of_Total_Revenue
FROM Amazon_sales
GROUP BY Region;


-- Total Units Sold by Sales Channel and Item Type:

SELECT Sales_Channel, Item_Type, SUM(Units_Sold) AS Total_Units_Sold
FROM Amazon_sales
GROUP BY Sales_Channel, Item_Type;


-- Average Order Value by Country:

SELECT Country, AVG(Total_Revenue) AS Average_Order_Value
FROM Amazon_sales
GROUP BY Country;


-- Total Profit by Item Type and Country:

SELECT Item_Type, Country, SUM(Total_Profit) AS Total_Profit
FROM Amazon_sales
GROUP BY Item_Type, Country;


-- Total Sales Revenue by Month and Item Type:

SELECT Month, Item_Type, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Month, Item_Type;


-- Top 5 Sales Channels by Total Units Sold:

SELECT Sales_Channel, SUM(Units_Sold) AS Total_Units_Sold
FROM Amazon_sales
GROUP BY Sales_Channel
ORDER BY Total_Units_Sold DESC
LIMIT 5;


-- Average Sales Revenue by Region:

SELECT Region, AVG(Total_Revenue) AS Average_Sales_Revenue
FROM Amazon_sales
GROUP BY Region;


-- Total Sales Revenue by Year and Sales Channel:

SELECT Year, Sales_Channel, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Year, Sales_Channel;


-- Total Sales Revenue by Region and Country:

SELECT Region, Country, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Region, Country;


-- Top 10 Orders by Total Profit:

SELECT Order_ID, Total_Profit
FROM Amazon_sales
ORDER BY Total_Profit DESC
LIMIT 10;


-- Total Profit by Month:

SELECT Year, Month, SUM(Total_Profit) AS Total_Profit
FROM Amazon_sales
GROUP BY Year, Month
ORDER BY Year, Month;


-- Average Unit Cost by Item Type:

SELECT Item_Type, AVG(Unit_Cost) AS Average_Unit_Cost
FROM Amazon_sales
GROUP BY Item_Type;


-- Total Sales Revenue by Item Type and Order Date:

SELECT Order_Date, Item_Type, SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Order_Date, Item_Type;


-- Top 5 Regions by Average Sales Revenue per Order:

SELECT Region, AVG(Total_Revenue) AS Average_Sales_Revenue_Per_Order
FROM Amazon_sales
GROUP BY Region
ORDER BY Average_Sales_Revenue_Per_Order DESC
LIMIT 5;


-- Total Revenue and Profit Growth Year-over-Year:

SELECT Year,
       SUM(Total_Revenue) AS Total_Revenue,
       SUM(Total_Profit) AS Total_Profit,
       LAG(SUM(Total_Revenue)) OVER (ORDER BY Year) AS Previous_Year_Revenue,
       LAG(SUM(Total_Profit)) OVER (ORDER BY Year) AS Previous_Year_Profit,
       (SUM(Total_Revenue) - LAG(SUM(Total_Revenue)) OVER (ORDER BY Year)) / LAG(SUM(Total_Revenue)) OVER (ORDER BY Year) * 100 AS Revenue_Growth_Percentage,
       (SUM(Total_Profit) - LAG(SUM(Total_Profit)) OVER (ORDER BY Year)) / LAG(SUM(Total_Profit)) OVER (ORDER BY Year) * 100 AS Profit_Growth_Percentage
FROM Amazon_sales
GROUP BY Year;


-- Top 5 Countries by Average Profit Margin:

SELECT Country,
       AVG((Total_Profit / Total_Revenue) * 100) AS Average_Profit_Margin
FROM Amazon_sales
GROUP BY Country
ORDER BY Average_Profit_Margin DESC
LIMIT 5;


-- Total Profit by Region and Item Type:

SELECT Region, Item_Type, 
       SUM(Total_Profit) AS Total_Profit
FROM Amazon_sales
GROUP BY Region, Item_Type
ORDER BY Total_Profit DESC;


-- Average Sales Revenue per Order by Sales Channel:

SELECT Sales_Channel,
       AVG(Total_Revenue) AS Average_Sales_Revenue_Per_Order
FROM Amazon_sales
GROUP BY Sales_Channel;


-- Percentage Contribution of Each Region to Total Sales Revenue:

SELECT Region,
       (SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM Amazon_sales)) * 100 AS Percentage_Contribution
FROM Amazon_sales
GROUP BY Region;


-- Revenue and Profit by Week of the Year:

SELECT YEAR(Order_Date) AS Order_Year,
       WEEK(Order_Date) AS Week_Number,
       SUM(Total_Revenue) AS Total_Revenue,
       SUM(Total_Profit) AS Total_Profit
FROM Amazon_sales
GROUP BY YEAR(Order_Date), WEEK(Order_Date)
ORDER BY Order_Year, Week_Number;


-- Correlation Between Unit Price and Units Sold:

SELECT 
    (SUM(Unit_Price * Units_Sold) - SUM(Unit_Price) * SUM(Units_Sold) / COUNT(*)) /
    (SQRT((SUM(Unit_Price * Unit_Price) - SUM(Unit_Price) * SUM(Unit_Price) / COUNT(*)) * 
          (SUM(Units_Sold * Units_Sold) - SUM(Units_Sold) * SUM(Units_Sold) / COUNT(*)))) 
    AS Correlation_Coefficient
FROM 
    Amazon_sales;


-- Profit Contribution by Item Type and Sales Channel:

SELECT Item_Type, Sales_Channel,
       (SUM(Total_Profit) / (SELECT SUM(Total_Profit) FROM Amazon_sales)) * 100 AS Profit_Contribution
FROM Amazon_sales
GROUP BY Item_Type, Sales_Channel;


-- Revenue Trend Comparison for Top 3 Item Types:

WITH RankedItemTypes AS (
    SELECT Item_Type,
           ROW_NUMBER() OVER (ORDER BY SUM(Total_Revenue) DESC) AS ItemRank
    FROM Amazon_sales
    GROUP BY Item_Type
)
SELECT 
    Year, 
    Month, 
    Amazon_sales.Item_Type, 
    SUM(Amazon_sales.Total_Revenue) AS Total_Revenue
FROM 
    Amazon_sales
JOIN 
    RankedItemTypes ON Amazon_sales.Item_Type = RankedItemTypes.Item_Type
WHERE 
    RankedItemTypes.ItemRank <= 3
GROUP BY 
    Year, Month, Amazon_sales.Item_Type
ORDER BY 
    Amazon_sales.Item_Type, Year, Month;




-- Cumulative Revenue and Profit Year-to-Date:

SELECT Year, Month,
       SUM(SUM(Total_Revenue)) OVER (PARTITION BY Year ORDER BY Month) AS Cumulative_Revenue,
       SUM(SUM(Total_Profit)) OVER (PARTITION BY Year ORDER BY Month) AS Cumulative_Profit
FROM Amazon_sales
GROUP BY Year, Month
ORDER BY Year, Month;


-- Seasonal Revenue Patterns by Item Type:

SELECT Item_Type, Month,
       SUM(Total_Revenue) AS Total_Revenue
FROM Amazon_sales
GROUP BY Item_Type, MONTH
ORDER BY Item_Type, Month;


-- Top 5 Sales Channels by Average Profit per Unit:

SELECT Sales_Channel,
       round(AVG(Total_Profit / Units_Sold),2) AS Average_Profit_Per_Unit
FROM Amazon_sales
GROUP BY Sales_Channel
ORDER BY Average_Profit_Per_Unit DESC
LIMIT 5;


-- Revenue Impact of Order Priority on Profit:

SELECT Order_Priority,
       round(AVG(Total_Revenue),2) AS Average_Revenue,
       round(AVG(Total_Profit),2) AS Average_Profit,
       round(AVG(Total_Profit) / AVG(Total_Revenue),2) * 100 AS Profit_Margin
FROM Amazon_sales
GROUP BY Order_Priority
ORDER BY Profit_Margin DESC;


-- Customer Lifetime Value (CLV) by Country:

WITH CustomerRevenue AS (
    SELECT Order_ID, 
           Country,
           SUM(Total_Revenue) AS Total_Revenue
    FROM Amazon_sales
    GROUP BY Order_ID, Country
)
SELECT Country,
       AVG(Total_Revenue) AS Average_CLV
FROM CustomerRevenue
GROUP BY Country;


-- Revenue and Profit by Sales Channel and Month:

WITH MonthlyRevenue AS (
    SELECT 
        Item_Type,
        DATE_FORMAT(Order_Date, '%Y-%m') AS YearMonth,
        SUM(Total_Revenue) AS Monthly_Total_Revenue
    FROM 
        Amazon_sales
    GROUP BY 
        Item_Type, YearMonth
)
SELECT 
    Item_Type,
    STDDEV(Monthly_Total_Revenue) AS Revenue_Variability
FROM 
    MonthlyRevenue
GROUP BY 
    Item_Type
ORDER BY 
    Revenue_Variability DESC
LIMIT 5;


-- Monthly Revenue vs. Profit Comparison:

SELECT Year, 
       Month, 
       round(SUM(Total_Revenue),2) AS Total_Revenue, 
       round(SUM(Total_Profit),2) AS Total_Profit,
       Round(SUM(Total_Profit) / SUM(Total_Revenue),2) * 100 AS Profit_Margin
FROM Amazon_sales
GROUP BY Year, Month
ORDER BY Year, Month;


-- Revenue and Profit by Region, Item Type, and Sales Channel:

SELECT Region, 
       Item_Type, 
       Sales_Channel, 
       SUM(Total_Revenue) AS Total_Revenue, 
       SUM(Total_Profit) AS Total_Profit
FROM Amazon_sales
GROUP BY Region, Item_Type, Sales_Channel
ORDER BY Total_Revenue DESC;


