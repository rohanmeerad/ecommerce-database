-- Purpose: Calculate total revenue generated for each product.
-- Results: Displays each product name along with the total revenue generated.

SELECT 
    P.ProductName, 
    SUM(OD.Quantity * OD.PricePerUnit) AS TotalSales
FROM 
    OrderDetails OD
INNER JOIN 
    Products P ON OD.ProductID = P.ProductID
GROUP BY 
    P.ProductName
ORDER BY 
    TotalSales DESC;

-- Notes: This query helps analyze which products generate the highest revenue.
