-- Insert Sample Data into Products
INSERT INTO Products (ProductID, ProductName, Price, Stock) VALUES
(1, 'Laptop', 999.99, 50),
(2, 'Smartphone', 599.99, 100),
(3, 'Tablet', 299.99, 200),
(4, 'Headphones', 99.99, 300),
(5, 'Charger', 19.99, 500);

-- Insert Sample Data into Orders
INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate) VALUES
(1, 1, 2, '2024-07-01'),
(2, 2, 1, '2024-07-01'),
(3, 3, 3, '2024-07-02'),
(4, 1, 1, '2024-07-03'),
(5, 5, 10, '2024-07-04');