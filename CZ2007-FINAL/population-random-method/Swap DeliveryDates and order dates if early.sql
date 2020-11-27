declare @deliverydatetime datetime
declare @ordereddatetime datetime
declare @oid int
set @oid = 1

WHILE @OID <= 151
BEGIN
	SELECT @deliverydatetime = DeliveryDate, @ordereddatetime =  OrderDateTime FROM 
	ProductsInOrder JOIN Orders ON Orders.OrderId = ProductsInOrder.OrderId
	WHERE Orders.OrderId = @oid;

	IF @deliverydatetime < @ordereddatetime
	BEGIN
		UPDATE Orders SET OrderDateTime = @deliverydatetime WHERE OrderId=@oid 
		UPDATE ProductsInOrder SET DeliveryDate = @ordereddatetime WHERE OrderId=@oid;
	END
set @oid = @oid + 1
END
	SELECT * FROM 
	ProductsInOrder JOIN Orders ON Orders.OrderId = ProductsInOrder.OrderId