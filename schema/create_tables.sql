-- Create Customers Table
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Address TEXT,
    RegistrationDate DATE DEFAULT CURRENT_DATE
);

-- Create Products Table
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT DEFAULT 0
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    OrderDate DATE DEFAULT CURRENT_DATE,
    TotalAmount DECIMAL(10, 2) NOT NULL
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    ProductID INT REFERENCES Products(ProductID),
    Quantity INT NOT NULL,
    PricePerUnit DECIMAL(10, 2) NOT NULL
);

-- Create Reviews Table
CREATE TABLE Reviews (
    ReviewID SERIAL 
