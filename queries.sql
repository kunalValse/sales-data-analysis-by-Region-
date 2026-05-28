-- Profit margin by region
SELECT Region,
       SUM(Revenue - Cost) AS Profit,
       ROUND(SUM(Revenue - Cost) * 100.0 / SUM(Revenue), 2) AS Profit_Margin_Pct
FROM sales_data
GROUP BY Region
ORDER BY Profit_Margin_Pct DESC;

-- Top performing channel per region
SELECT Region, Channel, SUM(Revenue) AS Revenue
FROM sales_data
GROUP BY Region, Channel
ORDER BY Region, Revenue DESC;
