-- Question 3
-- Find out all products purchased in June 2020
SELECT PID, OrderStatus, OrderDateTime, DeliveryDate
FROM ProductsInOrder, Orders
WHERE month(OrderDateTime)='6' 
AND year(OrderDateTime) ='2020'
AND Orders.OrderId = ProductsInOrder.OrderId
GROUP BY PID, OrderStatus, OrderDateTime, DeliveryDate

-- Filtering out products where OrderStatus = 'Delivered'
SELECT PID, OrderStatus, OrderDateTime, DeliveryDate
FROM ProductsInOrder, Orders
WHERE month(OrderDateTime)='6' 
AND year(OrderDateTime) ='2020'
AND Orders.OrderId = ProductsInOrder.OrderId
AND ProductsInOrder.OrderStatus = 'Delivered'
GROUP BY PID, OrderStatus, OrderDateTime, DeliveryDate

-- Finding the time from the ordering date to delivery date for each PID
SELECT PID, OrderStatus, OrderDateTime, DeliveryDate,
DATEDIFF(hour,OrderDateTime,DeliveryDate) AS DifferenceInHours
FROM ProductsInOrder, Orders
WHERE month(OrderDateTime)='6' 
AND year(OrderDateTime) ='2020'
AND Orders.OrderId = ProductsInOrder.OrderId
AND ProductsInOrder.OrderStatus = 'Delivered'
GROUP BY PID, OrderStatus, OrderDateTime, DeliveryDate

-- Sum of the DifferenceInHours for all PIDs
SELECT COUNT(PID) AS TotalNumOfProducts,
SUM(DATEDIFF(hour,OrderDateTime,DeliveryDate)) AS SumOfDifferenceInHours
FROM ProductsInOrder, Orders
WHERE month(OrderDateTime)='6' 
AND year(OrderDateTime) ='2020'
AND Orders.OrderId = ProductsInOrder.OrderId
AND ProductsInOrder.OrderStatus = 'Delivered'

--Solving the average
SELECT AVG(DATEDIFF(hour,OrderDateTime,DeliveryDate)) AS AverageInHours
FROM ProductsInOrder, Orders
WHERE month(OrderDateTime)='6' 
AND year(OrderDateTime) ='2020'
AND Orders.OrderId = ProductsInOrder.OrderId
AND ProductsInOrder.OrderStatus = 'Delivered'
