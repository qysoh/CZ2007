-- Question 6
-- Find revenue for each shop at for 1 order
SELECT t2.ShopName, t2.Price*t2.Quantity AS revenue, OrderDateTime
FROM Orders as t1, ProductsInOrder AS t2
WHERE t1.OrderID = t2.OrderID
GROUP BY ShopName, Price, Quantity,OrderDateTime
ORDER BY revenue DESC

-- Filter the orders for August 2020
SELECT t2.ShopName, (t2.Price*t2.Quantity) AS revenue, OrderDateTime
FROM Orders as t1, ProductsInOrder AS t2
WHERE MONTH(t1.OrderDateTime) = 8 AND YEAR(t1.OrderDateTime) = 2020
AND t1.OrderID = t2.OrderID
GROUP BY ShopName, Price, Quantity,OrderDateTime
ORDER BY revenue DESC

-- Filter the shops with their corresponding revenue
SELECT t2.ShopName, SUM(t2.Price*t2.Quantity) AS revenue
FROM Orders as t1, ProductsInOrder AS t2
WHERE MONTH(t1.OrderDateTime) = 8 AND YEAR(t1.OrderDateTime) = 2020
AND t1.OrderID = t2.OrderID
/* Group by Shop name with aggregate function SUM of all revenue(OrderPrice*OrderQuantity) by this shop */
GROUP BY ShopName
ORDER BY revenue DESC


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