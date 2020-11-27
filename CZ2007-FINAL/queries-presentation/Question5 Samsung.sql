-- Question 5i
-- Showing all unique products made by samsung
Select DISTINCT ProductName
From Products
Where Maker = 'Samsung';

--Question 5ii
-- Find out which Shop sells 'Samsung' products
SELECT ProductName, ShopName
FROM Products as t1, ProductsInShops AS t2
WHERE Maker = 'Samsung'
AND t1.PID = t2.PID
GROUP BY ProductName, ShopName
ORDER BY ProductName;

-- Count of Number of Shops that sells that particular 'Samsung' product
SELECT ProductName, Count (Distinct t2.ShopName) as NumberofShops
FROM Products as t1

    /* Left join on common attribute ProductID of both tables */
    LEFT JOIN ProductsInShops AS t2
    ON t1.PID = t2.PID
WHERE Maker = 'Samsung'
GROUP BY ProductName;