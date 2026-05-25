
-- 1. Total Revenue by Region
SELECT Region, SUM(Revenue) AS Total_Revenue
FROM sales_marketing_data
GROUP BY Region
ORDER BY Total_Revenue DESC;

-- 2. Conversion Rate by Lead Source
SELECT Lead_Source,
ROUND(AVG(Conversion_Rate),2) AS Avg_Conversion_Rate
FROM sales_marketing_data
GROUP BY Lead_Source
ORDER BY Avg_Conversion_Rate DESC;

-- 3. Top 10 Highest ROI Campaigns
SELECT Campaign_ID, Lead_Source, ROI_Percentage
FROM sales_marketing_data
ORDER BY ROI_Percentage DESC
LIMIT 10;

-- 4. Monthly Revenue Trend
SELECT substr(Date,1,7) AS Month,
SUM(Revenue) AS Monthly_Revenue
FROM sales_marketing_data
GROUP BY Month
ORDER BY Month;

-- 5. Best Performing Product
SELECT Product,
SUM(Revenue) AS Total_Revenue
FROM sales_marketing_data
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- 6. Sales Representative Performance
SELECT Sales_Rep,
SUM(Revenue) AS Revenue_Generated,
SUM(Conversions) AS Total_Conversions
FROM sales_marketing_data
GROUP BY Sales_Rep
ORDER BY Revenue_Generated DESC;

-- 7. Lead Source ROI Analysis
SELECT Lead_Source,
ROUND(AVG(ROI_Percentage),2) AS Avg_ROI
FROM sales_marketing_data
GROUP BY Lead_Source
ORDER BY Avg_ROI DESC;

-- 8. Region-wise Conversion Analysis
SELECT Region,
SUM(Leads) AS Total_Leads,
SUM(Conversions) AS Total_Conversions,
ROUND((SUM(Conversions)*100.0/SUM(Leads)),2) AS Conversion_Rate
FROM sales_marketing_data
GROUP BY Region;

-- 9. High Revenue Campaigns
SELECT *
FROM sales_marketing_data
WHERE Revenue > 500000
ORDER BY Revenue DESC;

-- 10. Dashboard KPI Query
SELECT
SUM(Leads) AS Total_Leads,
SUM(Conversions) AS Total_Conversions,
ROUND((SUM(Conversions)*100.0/SUM(Leads)),2) AS Overall_Conversion_Rate,
SUM(Revenue) AS Total_Revenue,
ROUND(AVG(ROI_Percentage),2) AS Avg_ROI
FROM sales_marketing_data;
