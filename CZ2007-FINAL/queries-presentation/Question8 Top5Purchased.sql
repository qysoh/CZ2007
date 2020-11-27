-- Question 8
-- Join all tables relating to Orders, ProductsInOrder, Products
Select *
From Orders
    Inner Join ProductsInOrder
    On ProductsInOrder.OrderId = Orders.OrderId
    Inner Join Products
    ON Products.PID = ProductsInOrder.PID

-- Only need to look at month of August 2020, for which user and what they bought
Select ProductName, UserId, OrderDateTime, Quantity
From Orders
    Inner Join ProductsInOrder
    On ProductsInOrder.OrderId = Orders.OrderId
    Inner Join Products
    ON Products.PID = ProductsInOrder.PID
WHERE MONTH(OrderDateTime) = 8 AND YEAR(OrderDateTime) = 2020
ORDER BY ProductName

-- TotalPurchases is use to represent which products are the most popular(ie Being bought the most)
-- UniquePurchases depend on which user bought it
-- ie if a same user bought the same product twice, it will only be counted as 1 TotalUniquePurchases
-- We use TotalUniquePurchases to check if this number equals to the total number of unqiue users
-- If the number is equal, regardless of how high the totalpurchase is, it will not be considered as it means every user has already bought this product
-- Otherwise, it still meant that some users have not purchased this product and hence has the potential to be part of the top 5 products sold
Select TOP 5
    ProductName, COUNT(*) as TotalPurchases, COUNT(DISTINCT UserId) as TotalUniquePurchases
From Orders
    Inner Join ProductsInOrder
    On ProductsInOrder.OrderId = Orders.OrderId
    Inner Join Products
    ON Products.PID = ProductsInOrder.PID
WHERE MONTH(OrderDateTime) = 8 AND YEAR(OrderDateTime) = 2020
Group by ProductName
-- This is to ensure that for the particular product we are looking for, not all users have bought that product yet (SOME)
Having COUNT(DISTINCT UserId) < (Select Count(*)
From Users)
Order by COUNT(*) DESC

-- TotalPurchases count as total purchases bought for that particular product
Select TOP 5
    ProductName
From Orders
    Inner Join ProductsInOrder
    On ProductsInOrder.OrderId = Orders.OrderId
    Inner Join Products
    ON Products.PID = ProductsInOrder.PID
WHERE MONTH(OrderDateTime) = 8 AND YEAR(OrderDateTime) = 2020
Group by ProductName
Having COUNT(DISTINCT UserId) < (Select Count(*)
From Users)
Order by COUNT(*) DESC
