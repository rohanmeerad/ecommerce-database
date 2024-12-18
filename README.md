# ecommerce-database
A SQL-based project showcasing schema design, sample data management, and analytical queries for an e-commerce system.
### Query 1. Fetch All Customers
- **Purpose:** Retrieve all customer details.
- **Results:** Displays all rows and columns from the `Customers` table.
- **Query:**
- - **Query File:** [fetch_all_customers.sql](queries/fetch_all_customers.sql)

  ```sql
  SELECT * FROM Customers;
 ![Fetch All Customers Output](assets/fetch_all_customers_output..png)
### Query 2. Total Sales Per Product
- **Purpose:** Calculate total revenue generated for each product.
- **Results:** Displays each product name along with the total revenue generated.
- **Query:**
- - **Query File:** [total_sales_per_product.sql](queries/total_sales_per_product.sql)
  ```sql
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
 ![Total Sales Per Product Output](assets/total_sales_per_product_output.png)
 ### Query 3: Total Sales Per Customer

**Purpose**: Calculate the total sales amount for each customer.

**Results**: Displays the total sales amount grouped by customer, sorted in descending order of sales.

**SQL Query**:
- - **Query File:** [total_sales_per_customer.sql](queries/total_sales_per_customer.sql)
```sql
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


