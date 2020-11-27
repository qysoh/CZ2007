-- Question 1
SELECT AVG(Price) AS AveragePrice
FROM ProductsInOrder, Orders, Products
WHERE ProductsInOrder.OrderId = Orders.OrderId
    AND ProductsInOrder.PID = Products.PID
    AND month(OrderDateTime) = '8'
    AND year(OrderDateTime) = '2020'
GROUP BY Products.PID
HAVING Products.PID = (SELECT PID
FROM Products
WHERE Products.ProductName = 'iPhone Xs' );


-- Question 2
SELECT ProductName, ROUND(AVG(CAST(Rating AS FLOAT)), 2) AS AvgRating
FROM Feedback
    INNER JOIN Products
    ON Feedback.PID = Products.PID
WHERE [FeedbackDateTime] >= '2020-08-01'
    AND [FeedbackDateTime] < '2020-09-01'
    AND ProductName IN (SELECT ProductName
    FROM Feedback
        INNER JOIN Products
        ON Feedback.PID = Products.PID
            AND [FeedbackDateTime] >= '2020-08-01'
            AND [FeedbackDateTime] < '2020-09-01'
    GROUP BY ProductName, Rating
    HAVING Rating = 5 AND COUNT(*) >= 100)
GROUP BY ProductName



-- Question 3
SELECT AVG(DATEDIFF(hour,OrderDateTime,DeliveryDate)) AS AverageInHours
FROM ProductsInOrder, Orders
WHERE month(OrderDateTime)='6'
    AND year(OrderDateTime) ='2020'
    AND Orders.OrderId = ProductsInOrder.OrderId
    AND ProductsInOrder.OrderStatus = 'Delivered';

-- Question 4
SELECT TOP 1
    EmployeeName, AVG(DATEDIFF(HOUR,FilledDateTime,HandledDateTime)) as SmallestLatencyHours
FROM Complaints, Employees
WHERE Employees.EID = Complaints.EID
GROUP BY Employees.EmployeeName
ORDER BY SmallestLatencyHours ASC

-- Question 5
Select DISTINCT ProductName
From Products as t1
Where Maker = 'Samsung';

SELECT ProductName, Count (Distinct t2.ShopName) as NumberofShops
FROM Products as t1

    /* Left join on common attribute ProductID of both tables */
    LEFT JOIN ProductsInShops AS t2
    ON t1.PID = t2.PID
WHERE Maker = 'Samsung'
GROUP BY ProductName;

-- Question 6
SELECT TOP 1
    t2.ShopName, SUM(t2.Price*t2.Quantity) AS revenue
FROM Orders as t1

    /* Left join on common attribute OrderID of both tables */
    LEFT JOIN ProductsInOrder AS t2
    ON t1.OrderID = t2.OrderID

/* OrderDateTime should fall under 2020/08 */
WHERE MONTH(t1.OrderDateTime) = 8 AND YEAR(t1.OrderDateTime) = 2020
/* Group by Shop name with aggregate function SUM of all revenue(OrderPrice*OrderQuantity) by this shop */
GROUP BY ShopName
ORDER BY revenue DESC


-- Question 7
Select TOP 1
    ProductName
From Orders
    Inner Join ProductsInOrder
    On ProductsInOrder.OrderId = Orders.OrderId
    Inner Join Products
    ON Products.PID = ProductsInOrder.PID
Where UserId = (SELECT TOP 1
    UserID
FROM Complaints
Group by UserID
Order by COUNT(*) DESC)
Order by Price DESC

-- Quesiont 8
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

-- Question 9
With
    A1
    as
    (
        SELECT Products.PID, (DATEDIFF(MONTH,'1900-01-01 00:00:00.000',OrderDateTime)) AS Months, Count(*) as ProductsSoldinMonth
        From Orders
            Inner Join ProductsInOrder
            On ProductsInOrder.OrderId = Orders.OrderId
            Inner Join Products
            ON Products.PID = ProductsInOrder.PID
        Group by (DATEDIFF(MONTH,'1900-01-01 00:00:00.000',OrderDateTime)), Products.PID
    )

Select ProductName
From Products
Where PID in (Select t1.pid
From A1 as t0
    Join A1 as t1
    On t0.pid = t1.pid
    Join A1 as t2
    On t1.pid = t2.pid
Where (t1.months - t0.months = 1 AND t2.months - t1.months = 1)
    AND (t0.ProductsSoldinMonth < t1.ProductsSoldinMonth)
    AND (t1.ProductsSoldinMonth < t2.ProductsSoldInMonth))