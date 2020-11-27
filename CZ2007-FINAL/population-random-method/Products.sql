-- SQL Fill Product TABLE

Declare @Pname int
Declare @foo int
Declare @MakerName as varchar(10)
Declare @CatName as varchar(10)

Set @Pname  = 11
Declare @MakerList table (name varchar(15))

SELECT * FROM Products;

While @Pname <100
Begin
	Select @foo = Round((4*Rand()+1),0);
	Select @MakerName = CHOOSE(@foo, 'Apple', 'XiaoMi', 'Samsung', 'Amazon', 'UGreen');
	Select @CatName = CHOOSE(@foo, 'Phone', 'Speaker', 'Phone', 'Accessories', 'Accessories');

	INSERT INTO Products VALUES('Product Name ' + CAST(@Pname as nvarchar(10)),
									@MakerName,
									@CatName);
	Set @Pname = @Pname + 1
End
SELECT * FROM Products;
