declare @deliverystatus varchar(50)

declare @oid int
set @oid = 1

WHILE @OID <= 151
BEGIN
	SELECT @deliverystatus = OrderStatus FROM 
	ProductsInOrder 
	WHERE ProductsInOrder.OrderId = @oid;

	IF @deliverystatus = 'shipped' OR @deliverystatus = 'being processed'
	BEGIN
		UPDATE ProductsInOrder
		SET DeliveryDate = NULL
		WHERE OrderId = @oid
	END
set @oid = @oid + 1
END
	SELECT * FROM 
	ProductsInOrder JOIN Orders ON Orders.OrderId = ProductsInOrder.OrderId