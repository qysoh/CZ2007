-- FILL Feedback

declare @UID int
declare @PID int
declare @FeedBackTimeList table (date datetime)
declare @FeedBackTime datetime
declare @rating int
declare @commentlist table (comment varchar(500))
declare @comment varchar(500)
declare @feedbacknum int
declare @foo int
declare @bar int
declare @baz int
declare @x int
declare @y int
declare @datetime2 datetime
declare @datetime3 datetime
-- 26 queries above

Insert into @FeedBackTimeList
SELECT DISTINCT FeedbackDateTime FROM Feedback;

Insert into @commentlist
SELECT DISTINCT Comment FROM Feedback;

set @feedbacknum = 250
SET @FeedBackTime = '2020-08-31 00:00:00.000'
WHILE @feedbacknum <= 300
BEGIN
	set @UID = (SELECT Userid FROM Orders Where OrderId=@feedbacknum)
	set @PID = 2
	Select @foo = Round((11*Rand()+1),0);
	
	set @FeedBackTime = @FeedBackTime + 0.0001
	Select @bar = Round((1*Rand()+1),0);
	Select @rating = 5;
	set @comment = 'Delivery was great!'

	INSERT INTO SS2G4.dbo.Feedback VALUES(@UID,
										 @PID,
										 @FeedBackTime,
										 @rating,
										 @comment);


	set @feedbacknum = @feedbacknum + 1
END