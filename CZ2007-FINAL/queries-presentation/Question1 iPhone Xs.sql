-- Question 1
-- Assumption: The price used is the price of 'iPhone Xs' when it was ordered at that point in time
-- Table for all Orders with 'iPhone Xs' and its price
SELECT Price, ProductName, OrderDateTime
FROM ProductsInOrder, Orders, Products
WHERE ProductsInOrder.OrderId = Orders.OrderId
AND  ProductsInOrder.PID = Products.PID
AND Products.ProductName = 'iPhone Xs'

-- Narrowing the results to within August 2020
SELECT Price, ProductName, OrderDateTime
FROM ProductsInOrder, Orders, Products
WHERE ProductsInOrder.OrderId = Orders.OrderId
AND  ProductsInOrder.PID = Products.PID
AND month(OrderDateTime) = '8'
AND year(OrderDateTime) = '2020'
AND Products.ProductName = 'iPhone Xs'

-- Finding the Average Price of 'iPhone Xs' during the month of August
SELECT AVG(Price) AS AveragePrice
FROM ProductsInOrder, Orders, Products
WHERE ProductsInOrder.OrderId = Orders.OrderId
AND  ProductsInOrder.PID = Products.PID
AND month(OrderDateTime) = '8'
AND year(OrderDateTime) = '2020'
GROUP BY Products.PID
HAVING Products.PID = (SELECT PID 
                        FROM Products
                        WHERE Products.ProductName = 'iPhone Xs' )

