

-- join relevant tables together
Select *
From Orders
    Inner Join ProductsInOrder
    On ProductsInOrder.OrderId = Orders.OrderId
    Inner Join Products
    ON Products.PID = ProductsInOrder.PID;

--  This table shows how  many complaints user made 
SELECT UserID , COUNT(*) AS no_of_complaints
FROM Complaints
Group by UserID
Order by COUNT(*) DESC;

--  This shows the most expensive product bought by the user that make the most number of complaints
Select TOP 1
    ProductName
From Orders
    Inner Join ProductsInOrder
    On ProductsInOrder.OrderId = Orders.OrderId
    Inner Join Products
    ON Products.PID = ProductsInOrder.PID
Where UserId = (
    SELECT TOP 1
    UserID
FROM Complaints
Group by UserID
Order by COUNT(*) DESC
)
Order by Price DESC;