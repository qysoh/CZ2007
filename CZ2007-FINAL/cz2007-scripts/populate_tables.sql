--  Shops (ShopName)
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 1');
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 2');
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 3');
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 4');
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 5');
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 6');
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 7');
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 8');
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 9');
INSERT INTO SS2G4.dbo.Shops
VALUES('Shop 10');

-- Users (UserID, UserName)
INSERT INTO SS2G4.dbo.Users
VALUES('1', 'Jane Doe');
-- kaikiat
INSERT INTO SS2G4.dbo.Users
VALUES('2', 'Sally Doe');
-- qianyi
INSERT INTO SS2G4.dbo.Users
VALUES('3', 'John Doe');
-- zheming
INSERT INTO SS2G4.dbo.Users
VALUES('4', 'Alan');-- zheming
INSERT INTO SS2G4.dbo.Users
VALUES('5', 'John');
-- weiji
INSERT INTO SS2G4.dbo.Users
VALUES('6', 'Sammy');
-- qianyi
INSERT INTO SS2G4.dbo.Users
VALUES('7', 'Tan Ah Kao');
-- wt
INSERT INTO SS2G4.dbo.Users
VALUES('8', 'Nina Gan');
-- wt
INSERT INTO SS2G4.dbo.Users
VALUES('9', 'Zhe Ming');
INSERT INTO SS2G4.dbo.Users
VALUES('10', 'Jonny');
-- weiji
INSERT INTO SS2G4.dbo.Users
VALUES('11', 'Cathy');
-- qianyi
INSERT INTO SS2G4.dbo.Users
VALUES('12', 'Tan Liang Ming');
-- wt
INSERT INTO SS2G4.dbo.Users
VALUES('13', 'Christy Chan');
-- wt
INSERT INTO SS2G4.dbo.Users
VALUES('14', 'Annabelle');
INSERT INTO SS2G4.dbo.Users
VALUES('15', 'Kaitlyn');
-- weiji
INSERT INTO SS2G4.dbo.Users
VALUES('16', 'Chan De Xing');
INSERT INTO SS2G4.dbo.Users
VALUES('17', 'Lao Ji');
-- wt
-- qianyi
INSERT INTO SS2G4.dbo.Users
VALUES('18', 'Lim Ah Kao');
-- wt
INSERT INTO SS2G4.dbo.Users
VALUES('19', 'Nnan Gan');
-- wt
INSERT INTO SS2G4.dbo.Users
VALUES('20', 'Tan Ah Beng');


-- Orders (OID, UID, Shipping Addr, Shipping Cost, OrderDateTime)
INSERT INTO SS2G4.dbo.Orders
VALUES('1', '1', 'Jurong Street 21', '5.00', '2020-08-23 15:30:47');
INSERT INTO SS2G4.dbo.Orders
VALUES('2', '1', 'Jurong Street 21', '8.00', '2020-08-23 16:20:52');
INSERT INTO SS2G4.dbo.Orders
VALUES('3', '2', 'Boon Lay Street 21', '12', '2020-06-18 17:50:20');
INSERT INTO SS2G4.dbo.Orders
VALUES('4', '3', 'Yishun Street 11', '7', '2020-09-18 13:12:23');
INSERT INTO SS2G4.dbo.Orders
VALUES('5', '3', 'Yishun Street 11', '5', '2020-06-10 14:25:52');
INSERT INTO SS2G4.dbo.Orders
VALUES('6', '2', 'Boon Lay Street 21', '1', '2020-07-08 08:30:32');
INSERT INTO SS2G4.dbo.Orders
VALUES('7', '4', '628 Veerasamy Road', '2', '2020-09-11 16:20:21');
INSERT INTO SS2G4.dbo.Orders
VALUES('8', '5', '25 Paya Lebar Road', '1', '2020-06-28 09:05:05');
INSERT INTO SS2G4.dbo.Orders
VALUES('9', '6', 'Bishan Street 91', '1', '2020-09-08 11:20:52');

INSERT INTO SS2G4.dbo.Orders
VALUES('10', '7', '810 Woodlands Street 7', '1.5', '2020-06-23 15:30:47');
INSERT INTO SS2G4.dbo.Orders
VALUES('11', '8', '811 Woodlands Street 8', '2.5', '2020-06-24 16:20:52');

INSERT INTO SS2G4.dbo.Orders
VALUES('12', '9', '812 Woodlands Street 9', '3.5', '2020-07-18 17:50:20');
INSERT INTO SS2G4.dbo.Orders
VALUES('13', '10', '813 Woodlands Street 10', '4', '2020-07-18 13:12:23');
INSERT INTO SS2G4.dbo.Orders
VALUES('14', '11', '814 Woodlands Street 11', '1', '2020-07-23 14:25:52');

INSERT INTO SS2G4.dbo.Orders
VALUES('15', '12', '815 Woodlands Street 12', '2', '2020-08-24 08:30:32');
INSERT INTO SS2G4.dbo.Orders
VALUES('16', '13', '816 Woodlands Street 13', '1', '2020-08-24 16:20:21');
INSERT INTO SS2G4.dbo.Orders
VALUES('17', '14', '817Woodlands Street 14', '1', '2020-08-22 09:05:05');
INSERT INTO SS2G4.dbo.Orders
VALUES('18', '15', '818 Woodlands Street 15818', '1', '2020-08-21 11:20:52');

INSERT INTO SS2G4.dbo.Orders
VALUES('19', '16', '819 Woodlands Street 16', '1', '2020-10-13 11:20:52');

INSERT INTO SS2G4.dbo.Orders
VALUES('20', '17', '820 Woodlands Street 17', '1', '2020-10-15 11:20:52');

INSERT INTO SS2G4.dbo.Orders
VALUES('21', '18', 'Bishan Street 18', '1', '2020-10-11 11:20:52');
INSERT INTO SS2G4.dbo.Orders
VALUES('22', '19', 'Bishan Street 19', '1', '2020-10-12 11:20:52');


INSERT INTO SS2G4.dbo.Orders
VALUES('23', '15', '818 Woodlands Street 15818 ', '1', '2020-08-11 13:20:52');
INSERT INTO SS2G4.dbo.Orders
VALUES('24', '16', '819 Woodlands Street 16', '1', '2020-08-13 14:20:52');
INSERT INTO SS2G4.dbo.Orders
VALUES('25', '17', '820 Woodlands Street 17', '1', '2020-08-15 15:20:52');
INSERT INTO SS2G4.dbo.Orders
VALUES('26', '18', 'Bishan Street 18', '1', '2020-08-11 16:20:52');
INSERT INTO SS2G4.dbo.Orders
VALUES('27', '19', 'Bishan Street 19', '1', '2020-08-13 17:20:52');



-- Employees (EID, EmployeeName, Salary)
INSERT INTO SS2G4.dbo.Employees
VALUES('1', 'Shawn Lim', '2500');
INSERT INTO SS2G4.dbo.Employees
VALUES('2', 'Alfred Walter', '3500');
INSERT INTO SS2G4.dbo.Employees
VALUES('3', 'Kurt Stracke', '3500');
INSERT INTO SS2G4.dbo.Employees
VALUES('4', 'Darius Tan', '3500');
INSERT INTO SS2G4.dbo.Employees
VALUES('5', 'Sean Goh', '2500');
INSERT INTO SS2G4.dbo.Employees
VALUES('6', 'Joshua', '2500');
INSERT INTO SS2G4.dbo.Employees
VALUES('7', 'Kenina', '4500');
INSERT INTO SS2G4.dbo.Employees
VALUES('8', 'Dominic Tan', '2500');
INSERT INTO SS2G4.dbo.Employees
VALUES('9', 'Sean Lim', '2800');
INSERT INTO SS2G4.dbo.Employees
VALUES('10', 'Lionel Peh', '3900');
INSERT INTO SS2G4.dbo.Employees
VALUES('11', 'Howen Goh', '3200');
INSERT INTO SS2G4.dbo.Employees
VALUES('12', 'Melvin Sim', '3800');


-- Products (PID, PName, Maker, Category)
INSERT INTO SS2G4.dbo.Products
VALUES('IPhone 11 Pro Casing', 'Apple', 'Accessories');
INSERT INTO SS2G4.dbo.Products
VALUES('iPhone Xs', 'Apple', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('iPhone Xs Max', 'Apple', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('iPhone X', 'Apple', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('iPhone 12', 'Apple', 'Phone');

INSERT INTO SS2G4.dbo.Products
VALUES('iPhone 12 Pro', 'Apple', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('iPhone 12 Pro Max', 'Apple', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('iPhone SE', 'Apple', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('iPhone Mini', 'Apple', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('Phone 11 Pro', 'Apple', 'Phone');

INSERT INTO SS2G4.dbo.Products
VALUES('Samsung Galaxy S20', 'Samsung', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('Samsung Note 7', 'Samsung', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('Samsung Note 8', 'Samsung', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('Samsung Note 9', 'Samsung', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('Samsung Note 10', 'Samsung', 'Phone');

INSERT INTO SS2G4.dbo.Products
VALUES('Samsung Galaxy A9', 'Samsung', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('Samsung Galaxy A10', 'Samsung', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('Samsung Galaxy s10', 'Samsung', 'Phone');
INSERT INTO SS2G4.dbo.Products
VALUES('Xiaomi Handcam', 'Xiaomi', 'Camera');
INSERT INTO SS2G4.dbo.Products
VALUES('Creative Desktop Speaker', 'Creative', 'Speaker');

-- Complaints
INSERT INTO SS2G4.dbo.Complaints
VALUES('1', '2', '2020-09-10 14:30:00', 'Scratches found on product', 'addressed', '2020-09-05 14:23:00');
INSERT INTO SS2G4.dbo.Complaints
VALUES('1', '1', '2020-08-29 14:30:00', 'Product images not found on the website !', 'addressed', '2020-08-28 15:30:00');
INSERT INTO SS2G4.dbo.Complaints
VALUES('1', '4', '2020-07-10 14:25:00', 'Scratches found on product', 'being handled', '2020-07-09 14:50:00');
INSERT INTO SS2G4.dbo.Complaints
VALUES('1', '3', '2020-09-26 14:30:00', 'Product images not found on the website !', 'being handled', '2020-09-24 15:30:00');
INSERT INTO SS2G4.dbo.Complaints
VALUES('4', '2', '2020-08-28 14:30:00', 'Sound not clear', 'addressed', '2020-08-24 14:30:00');
INSERT INTO SS2G4.dbo.Complaints
VALUES('4', '1', '2020-10-04 14:30:00', 'Product images not found on the website !', 'being handled', '2020-10-01 15:30:00');
INSERT INTO SS2G4.dbo.Complaints
VALUES('2', '2', '2020-06-29 14:30:00', 'Screen cracked!!', 'addressed', '2020-06-28 13:30:00');
INSERT INTO SS2G4.dbo.Complaints
VALUES('6', '3', '2020-09-25 14:40:00', 'Product is faulty!', 'addressed', '2020-09-24 12:30:00');
INSERT INTO SS2G4.dbo.Complaints
VALUES('5', null, null, 'Scratched Case', 'pending', '2020-07-07 19:30:00');

-- ComplaintsOnShops (ComplaintID, ShopName)
INSERT INTO SS2G4.dbo.ComplaintsOnShops
VALUES('2', 'Shop 4');
INSERT INTO SS2G4.dbo.ComplaintsOnShops
VALUES('4', 'Shop 4');
INSERT INTO SS2G4.dbo.ComplaintsOnShops
VALUES('6', 'Shop 6');

-- ComplaintsOnOrders (ComplaintID, OrderId)
INSERT INTO SS2G4.dbo.ComplaintsOnOrders
VALUES('1', '1');
INSERT INTO SS2G4.dbo.ComplaintsOnOrders
VALUES('3', '2');
INSERT INTO SS2G4.dbo.ComplaintsOnOrders
VALUES('5', '7');
INSERT INTO SS2G4.dbo.ComplaintsOnOrders
VALUES('7', '3');
INSERT INTO SS2G4.dbo.ComplaintsOnOrders
VALUES('8', '9');
INSERT INTO SS2G4.dbo.ComplaintsOnOrders
VALUES('9', '8');

-- ProductsInOrder 
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('1', '1', 'Shop 1', 'delivered', '2020-08-25 15:30:47', '50.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('7', '2', 'Shop 4', 'delivered', '2020-08-26 16:20:52', '2000.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('8', '3', 'Shop 5', 'delivered', '2020-08-21 16:18:32', '1410.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('9', '4', 'Shop 5', 'delivered', '2020-09-22 17:20:42', '1880.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('10', '5', 'Shop 10', 'delivered', '2020-06-15 18:20:42', '1950.00', '1');

INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('11', '6', 'Shop 5', 'delivered', '2020-07-11 17:20:36', '1580.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('12', '7', 'Shop 6', 'delivered', '2020-09-24 16:18:52', '1650.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('13', '8', 'Shop 6', 'delivered', '2020-07-01 17:20:52', '1750.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('14', '9', 'Shop 8', 'delivered', '2020-09-15 12:28:02', '1800.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('2', '10', 'Shop 1', 'delivered', '2020-06-28 16:05:22', '1500.00', '1');

INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('2', '11', 'Shop 1', 'delivered', '2020-06-28 15:10:22', '1500.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('2', '12', 'Shop 1', 'delivered', '2020-07-25 13:29:41', '1500.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('2', '13', 'Shop 2', 'delivered', '2020-07-22 13:10:42', '1550.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('2', '14', 'Shop 3', 'delivered', '2020-07-24 15:21:27', '1508.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('2', '15', 'Shop 1', 'delivered', '2020-08-28 15:03:05', '1500.00', '1');

INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('2', '16', 'Shop 2', 'delivered', '2020-08-29 15:25:30', '1550.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('2', '17', 'Shop 7', 'delivered', '2020-08-28 14:20:00', '1550.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('2', '18', 'Shop 7', 'delivered', '2020-08-29 16:20:00', '1550.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('3', '19', 'Shop 1', 'shipped', null, '1400.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('4', '20', 'Shop 1', 'being processed', null, '1300.00', '1');


INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('5', '21', 'Shop 2', 'delivered', '2020-07-25 16:20:52', '1750.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('6', '22', 'Shop 3', 'delivered', '2020-07-22 16:30:00', '1908.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('7', '23', 'Shop 4', 'delivered', '2020-08-19 15:30:47', '2000.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('7', '24', 'Shop 4', 'delivered', '2020-08-22 16:20:52', '2000.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('7', '25', 'Shop 4', 'delivered', '2020-08-20 16:18:32', '2000.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('7', '26', 'Shop 4', 'delivered', '2020-08-20 17:20:42', '2000.00', '1');
INSERT INTO SS2G4.dbo.ProductsInOrder
VALUES('7', '27', 'Shop 4', 'delivered', '2020-08-22 18:20:42', '2000.00', '1');




-- ProductsInShops (ShopName,PID, Price,Quantity)
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 1', '1', '50', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 1', '2', '1500', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 1', '3', '1400', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 1', '4', '1300', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 1', '5', '1700', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 1', '6', '1900', '150');

INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 2', '1', '55', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 2', '2', '1550', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 2', '3', '1450', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 2', '4', '1350', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 2', '5', '1750', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 2', '6', '1950', '150');

INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 3', '1', '58', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 3', '2', '1508', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 3', '3', '1408', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 3', '4', '1308', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 3', '5', '1708', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 3', '6', '1908', '150');

INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 4', '7', '2000', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 4', '8', '1400', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 4', '9', '1850', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 4', '10', '1950', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 4', '11', '1500', '500');

INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 5', '7', '2010', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 5', '8', '1410', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 5', '9', '1880', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 5', '10', '1980', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 5', '11', '1580', '150');


INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 6', '12', '1650', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 6', '13', '1750', '150');


INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 7', '1', '55', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 7', '2', '1550', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 7', '13', '1750', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 7', '14', '1850', '150');


INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 8', '14', '1800', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 8', '15', '1900', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 8', '16', '1420', '500');


INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 9', '17', '1320', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 9', '18', '1650', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 9', '19', '300', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 9', '20', '250', '150');
-- xiaomi handcam


INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 10', '10', '1950', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 10', '12', '1600', '150');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 10', '15', '1900', '500');
INSERT INTO SS2G4.dbo.ProductsInShops
VALUES('Shop 10', '16', '50', '150');



-- Feedback (UID, PID, FeedbackDateTime, Rating,Comment)
INSERT INTO SS2G4.dbo.Feedback
VALUES('1', '1', '2020-08-26 17:50:30', '5', 'Delivery is on time');
INSERT INTO SS2G4.dbo.Feedback
VALUES('1', '7', '2020-08-27 13:50:20', '5', 'Great Product');
INSERT INTO SS2G4.dbo.Feedback
VALUES('2', '8', '2020-08-22 17:12:25', '5', 'Delivery is on time');
INSERT INTO SS2G4.dbo.Feedback
VALUES('3', '9', '2020-09-23 14:23:20', '5', 'Friendly seller');
INSERT INTO SS2G4.dbo.Feedback
VALUES('3', '10', '2020-06-16 12:30:40', '5', 'Delivery is on time');
INSERT INTO SS2G4.dbo.Feedback
VALUES('2', '11', '2020-07-12 16:40:30', '5', 'Great Product');

INSERT INTO SS2G4.dbo.Feedback
VALUES('4', '12', '2020-09-25 17:13:22', '5', 'Delivery is on time');
INSERT INTO SS2G4.dbo.Feedback
VALUES('5', '13', '2020-07-02 18:50:50', '5', 'Friendly Seller');
INSERT INTO SS2G4.dbo.Feedback
VALUES('6', '14', '2020-09-16 12:50:10', '5', 'Delivery is on time');
INSERT INTO SS2G4.dbo.Feedback
VALUES('7', '2', '2020-08-02 18:55:24', '5', 'Friendly seller');
INSERT INTO SS2G4.dbo.Feedback
VALUES('8', '2', '2020-08-05 13:50:21', '5', 'Delivery is on time');

INSERT INTO SS2G4.dbo.Feedback
VALUES('9', '2', '2020-08-01 15:40:40', '5', 'Fast delivery');
INSERT INTO SS2G4.dbo.Feedback
VALUES('10', '2', '2020-08-02 16:52:20', '5', 'Seller is friendly');
INSERT INTO SS2G4.dbo.Feedback
VALUES('11', '2', '2020-08-01 17:31:52', '5', 'Delivery is on time');
INSERT INTO SS2G4.dbo.Feedback
VALUES('12', '2', '2020-08-29 18:21:25', '3', 'Seller is friendly');
INSERT INTO SS2G4.dbo.Feedback
VALUES('13', '2', '2020-08-30 19:10:20', '3', 'Seller is rude');

INSERT INTO SS2G4.dbo.Feedback
VALUES('14', '2', '2020-08-29 12:54:24', '5', 'Delivery is on time');
INSERT INTO SS2G4.dbo.Feedback
VALUES('15', '2', '2020-08-30 13:44:53', '5', 'Delivery is on time');

INSERT INTO SS2G4.dbo.Feedback
VALUES('18', '5', '2020-07-26 16:42:24', '3', 'Delivery is slightly late');
INSERT INTO SS2G4.dbo.Feedback
VALUES('19', '6', '2020-07-23 18:25:20', '3', 'Delivery is slightly late');

INSERT INTO SS2G4.dbo.Feedback
VALUES('15', '7', '2020-08-25 17:13:22', '5', 'Delivery is on time');
INSERT INTO SS2G4.dbo.Feedback
VALUES('16', '7', '2020-08-23 18:50:50', '5', 'Friendly Seller');
INSERT INTO SS2G4.dbo.Feedback
VALUES('17', '7', '2020-08-26 12:50:10', '5', 'Delivery is on time');
INSERT INTO SS2G4.dbo.Feedback
VALUES('18', '7', '2020-08-27 18:55:24', '5', 'Friendly seller');
INSERT INTO SS2G4.dbo.Feedback
VALUES('19', '7', '2020-08-28 13:50:21', '5', 'Delivery is on time');

