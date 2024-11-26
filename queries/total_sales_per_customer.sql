-- Query 3: Fetch Total Sales Per Customer
-- Purpose: Calculate the total sales amount for each customer.

SELECT 
    c.CustomerID,
    c.Name AS CustomerName,
    SUM(o.TotalAmount) AS TotalSales
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.CustomerID, c.Name
ORDER BY 
    TotalSales DESC;
