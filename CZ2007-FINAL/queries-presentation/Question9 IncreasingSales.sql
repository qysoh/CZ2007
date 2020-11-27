-- Question 9
-- Select Products based on when they were ordered, and arranged them in Months
-- Months means a numerical value from the default date '1900-01-01 00:00:00.000' to the current months
-- The bigger the value for month, the more current the date is
SELECT Products.ProductName, OrderDateTime, (DATEDIFF(MONTH,'1900-01-01 00:00:00.000',OrderDateTime)) AS Months, Count(*) as ProductsSoldinMonth
From Orders
    Inner Join ProductsInOrder
    On ProductsInOrder.OrderId = Orders.OrderId
    Inner Join Products
    ON Products.PID = ProductsInOrder.PID
Group by ProductName, OrderDateTime, (DATEDIFF(MONTH,'1900-01-01 00:00:00.000',OrderDateTime)), Products.PID
ORDER BY ProductName;

-- Sort the Table based on ProductName, and within each ProductName we sort by the Months
-- This is to find which products have an ascending ProductsSoldinMonth when Month is also arranged in an ascending order
SELECT ProductName, (DATEDIFF(MONTH,'1900-01-01 00:00:00.000',OrderDateTime)) AS Months, Count(*) as ProductsSoldinMonth
From Orders
    Inner Join ProductsInOrder
    On ProductsInOrder.OrderId = Orders.OrderId
    Inner Join Products
    ON Products.PID = ProductsInOrder.PID
Group by Products.PID, ProductName, (DATEDIFF(MONTH,'1900-01-01 00:00:00.000',OrderDateTime))
ORDER BY ProductName, Months ASC;

-- Extract out which ProductName is being increasingly purchased for 3 months, with its corresponding Months and ProductsSoldinMonth
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

Select *
From A1 as t0
    Join A1 as t1
    On t0.pid = t1.pid
    Join A1 as t2
    On t1.pid = t2.pid
Where (t1.months - t0.months = 1 AND t2.months - t1.months = 1)
    AND (t0.ProductsSoldinMonth < t1.ProductsSoldinMonth)
    AND (t1.ProductsSoldinMonth < t2.ProductsSoldInMonth);

-- Select the ProductName which is the result
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

