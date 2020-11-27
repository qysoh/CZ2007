-- SQL Fill ProductsInShops
Declare @Sname varchar(50)
Declare @ProductID int
Declare @Price int
Declare @Quantity int

-- Insert our own insert queries here
Set @ProductID = 21

While @ProductID <= 99
Begin
	
	set @Sname = (SELECT TOP 1 ShopName FROM Shops
	ORDER BY NEWID());
	set @Price = Round((5*Rand()+1),1) * 100;
	set @Quantity = Round((5*Rand()+1),1) * 100;

	INSERT INTO ProductsInShops VALUES(@Sname,
												 @ProductID,
												 @Price,
												 @Quantity); 
	set @ProductID = @ProductID + 1

End
SELECT * FROM ProductsInShops;