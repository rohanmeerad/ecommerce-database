-- Query 4: Fetch Most Popular Products by Quantity Sold
-- Purpose: Identify the products with the highest quantity sold.

SELECT 
    p.ProductID,
    p.ProductName,
    SUM(od.Quantity) AS TotalQuantitySold
FROM 
    Products p
JOIN 
    OrderDetails od ON p.ProductID = od.ProductID
GROUP BY 
    p.ProductID, p.ProductName
ORDER BY 
    TotalQuantitySold DESC;
