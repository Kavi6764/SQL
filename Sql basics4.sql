-- Create Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    JoinDate DATE
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Insert Customers
INSERT INTO Customer (CustomerID, Name, City, JoinDate) VALUES
(1, 'Arun', 'Chennai', '2024-01-10'),
(2, 'Priya', 'Mumbai', '2024-02-15'),
(3, 'Ravi', 'Delhi', '2024-03-20'),
(4, 'Meena', 'Bangalore', '2024-04-25'),
(5, 'Kumar', 'Pune', '2024-05-30'),
(6, 'Anitha', 'Kochi', '2024-06-05'),
(7, 'Vijay', 'Hyderabad', '2024-06-15'),
(8, 'Sneha', 'Jaipur', '2024-07-01'),
(9, 'Rahul', 'Ahmedabad', '2024-07-10'),
(10, 'Deepa', 'Kolkata', '2024-07-20');

-- Insert Orders (3 customers will have no orders)
INSERT INTO Orders (OrderID, CustomerID, ProductName, Price, OrderDate) VALUES
(101, 1, 'Laptop', 55000.00, '2024-08-01'),
(102, 2, 'Mobile', 25000.00, '2024-08-02'),
(103, 3, 'Headphones', 2000.00, '2024-08-03'),
(104, 5, 'Tablet', 15000.00, '2024-08-04'),
(105, 6, 'Smartwatch', 5000.00, '2024-08-05'),
(106, 7, 'Printer', 8000.00, '2024-08-06'),
(107, 8, 'Camera', 35000.00, '2024-08-07');

-- Query: All Customers including those with no orders
SELECT *
FROM Customer c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;
INSERT INTO Orders (OrderID, CustomerID, ProductName, Price, OrderDate) VALUES
(109, NULL, 'Smart Watch', 4000.00, '2025-07-01'),
(110, NULL, 'Keyboard', 1500.00, '2025-07-12'),
(111, NULL, 'Mouse', 800.00, '2025-07-20');

select * from customer c
right join orders o
on c.customerId = o.customerid;

select * from customer c
left join orders o
on c.customerID = o.customerID
where o.customerId is null;

SELECT *
FROM Orders o
LEFT JOIN Customer c
    ON o.customerid = c.customerid
WHERE c.customerid IS NULL;

select * from customer c
join orders o
on c.customerid = o.customerid
where o.orderid is null

union

select * from  orders o
join customer c
on o.customerid=c.customerid
where c.customerid is null