-- Create a Stored Procedure to Update Stock Based on Orders
CREATE PROCEDURE UpdateStock
    @OrderID INT
AS
BEGIN
    -- Declare variables
    DECLARE @ProductID INT;
    DECLARE @Quantity INT;

    -- Get ProductID and Quantity from the Orders table
    SELECT @ProductID = ProductID, @Quantity = Quantity
    FROM Orders
    WHERE OrderID = @OrderID;

    -- Update the stock in the Products table
    UPDATE Products
    SET Stock = Stock - @Quantity
    WHERE ProductID = @ProductID;
END;
GO

-- Create a Stored Procedure to Get Product Details
CREATE PROCEDURE GetProductDetails
    @ProductID INT
AS
BEGIN
    SELECT *
    FROM Products
    WHERE ProductID = @ProductID;
END;
GO