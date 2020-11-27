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
-- 26 queries above

Insert into @FeedBackTimeList
SELECT DISTINCT FeedbackDateTime FROM Feedback;

Insert into @commentlist
SELECT DISTINCT Comment FROM Feedback;

set @feedbacknum = 26

WHILE @feedbacknum < 145
BEGIN
	set @UID = (SELECT TOP 1 UserId FROM Users ORDER BY NEWID())
	set @PID = (SELECT TOP 1 PID FROM Products ORDER BY NEWID())
	Select @foo = Round((11*Rand()+1),0);
	set @FeedBackTime = CHOOSE (@foo,  '2020-08-05 05:30:47',
								 '2020-08-12 15:20:47',
								 '2020-08-13 13:10:47',
								 '2020-08-14 16:40:47',
								 '2020-08-16 12:20:47',
								 '2020-08-17 17:30:47',
								 '2020-08-18 24:10:47',
								 '2020-08-21 21:50:47',
								 '2020-08-23 13:40:47',
								 '2020-08-24 04:30:47',
								 '2020-08-25 07:20:47',
								 '2020-08-27 06:10:47')
	Select @bar = Round((4*Rand()+1),0);
	Select @rating = CHOOSE(@bar, '1','2','3','4','5');
	IF @rating = 1 OR @rating = 2
		set @comment = 'Delivery was bad'
	IF @rating = 3
		set @comment = 'Delivery was okay'
	IF @rating = 4 OR @rating = 5
		set @comment = 'Delivery was great!'

	INSERT INTO SS2G4.dbo.Feedback VALUES(@UID,
										 @PID,
										 @FeedBackTime,
										 @rating,
										 @comment);



END