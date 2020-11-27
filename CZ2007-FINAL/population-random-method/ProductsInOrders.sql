-- Fill ProductsInOrders
SELECT * FROM ProductsInOrder;

--Fill Productsinorders
declare @PIDList table (pid int)
declare @PID int
declare @OrderId int
declare @ShopNameList table(name varchar(10))
declare @ShopName varchar(50)
declare @OrderStatus varchar(50)
declare @DeliveryDateList table(deliverydate datetime)
declare @DeliveryDate datetime
declare @PriceList table(price int)
declare @Price int
declare @Quantity int
declare @foo int

Insert into @PIDList
SELECT DISTINCT PID FROM Products;

Insert into @ShopNameList 
SELECT DISTINCT ShopName From Shops;

Insert into @DeliveryDateList
SELECT DISTINCT DeliveryDate From ProductsInOrder;
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('1','1','Shop 1', 'delivered', '2020-08-25 15:30:47','50.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('7','2','Shop 4', 'delivered', '2020-08-26 16:20:52','2000.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('8','3','Shop 5', 'delivered', '2020-08-21 16:18:32','1410.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('9','4','Shop 5', 'delivered', '2020-09-22 17:20:42','1880.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('10','5','Shop 10', 'delivered', '2020-06-15 18:20:42','1950.00','1');


INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('11','6','Shop 5', 'delivered', '2020-07-11 17:20:36','1580.00','1');INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('12','7','Shop 6', 'delivered', '2020-09-24 16:18:52','1650.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('13','8','Shop 6', 'delivered', '2020-07-01 17:20:52','1750.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('14','9','Shop 8', 'delivered', '2020-09-15 12:28:02','1800.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('2','10','Shop 1', 'delivered',' 2020-06-28 16:05:22','1500.00','1');

INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('2','11','Shop 1', 'delivered', '2020-06-28 15:10:22','1500.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('2','12','Shop 1', 'delivered', '2020-07-25 13:29:41','1500.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('2','13','Shop 2', 'delivered', '2020-07-22 13:10:42','1550.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('2','14','Shop 3', 'delivered', '2020-07-24 15:21:27','1508.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('2','15','Shop 1',  'delivered', '2020-08-28 15:03:05','1500.00','1');

INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('2','16','Shop 2',  'delivered', '2020-08-29 15:25:30','1550.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('2','17','Shop 7',  'delivered', '2020-08-28 14:20:00','1550.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('2','18','Shop 7',  'delivered', '2020-08-29 16:20:00','1550.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('3','19','Shop 1', 'shipped', NULL,'1400.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('4','20','Shop 1', 'being processed', NULL,'1300.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('5','21','Shop 2', 'delivered', '2020-07-25 16:20:52','1750.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('6','22','Shop 3', 'delivered', '2020-07-22 16:30:00','1908.00','1');


INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('7','23','Shop 4', 'delivered', '2020-08-19 15:30:47','2000.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('7','24','Shop 4', 'delivered', '2020-08-22 16:20:52','2000.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('7','25','Shop 4', 'delivered', '2020-08-20
16:18:32','2000.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('7','26','Shop 4', 'delivered', '2020-08-20 17:20:42','2000.00','1');
INSERT INTO SS2G4.dbo.ProductsInOrder VALUES('7','27','Shop 4', 'delivered', '2020-08-22 18:20:42','2000.00','1');

-- ?? queries above
set @OrderId = 31

WHILE @OrderId <= 151
BEGIN
		SELECT TOP 1 @Price = Price, @ShopName = ShopName, @PID = PID
		FROM ProductsInShops ORDER BY NEWID();

		Select @foo = Round((2*Rand()+1),0);
		Select @OrderStatus = CHOOSE(@foo, 'being processed', 'shipped', 'delivered');

		set @DeliveryDate= (SELECT TOP 1 deliverydate FROM @DeliveryDateList
		ORDER BY NEWID());

		set @Quantity = Round((5*Rand()+1),0);

	INSERT INTO ProductsInOrder VALUES(@PID,
								   @OrderId,
								   @ShopName,
								   @OrderStatus,
								   @DeliveryDate,
								   @Price,
								   @Quantity);

set @OrderId = @OrderId + 1
END

SELECT * FROM ProductsInOrder;