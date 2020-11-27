-- Fill Orders table
Declare @OID int
Declare @UIDlist table (userid int)
Declare @UID int
Declare @AddressList table (name varchar(50))
Declare @Address varchar(50)
Declare @ShippingCost int
Declare @OrderDateTimeList table (orderdatetime datetime)
Declare @OrderDateTime datetime

Insert into @UIDlist
SELECT DISTINCT Userid FROM Users;

Insert into @AddressList
SELECT DISTINCT ShippingAddress FROM Orders;

Insert Into @OrderDateTimeList  
SELECT DISTINCT OrderDateTime FROM ORders;

-- ADD Own queries from docs

-- start from 23 
set @OID = 23

WHILE @OID <= 50
Begin
	set @UID = (SELECT TOP 1 userid FROM @UIDlist
		ORDER BY NEWID());
	set @Address = (SELECT TOP 1 name FROM @AddressList
		ORDER BY NEWID());
	set @OrderDateTime = (SELECT TOP 1 orderdatetime FROM @OrderDateTimeList
		ORDER BY NEWID());
	set @ShippingCost = Round((9*Rand()+1),1) * 10;
	set @OID = @OID + 1
	INSERT INTO SS2G4.dbo.Orders VALUES(@OID,
										@UID,
										@Address,
										@ShippingCost,
										@OrderDateTime);

END

GO
SELECT * FROM ORders;