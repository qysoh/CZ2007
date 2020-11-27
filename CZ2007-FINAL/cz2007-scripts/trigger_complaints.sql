CREATE TRIGGER trigger_complaints
ON Complaints   
AFTER DELETE
AS
BEGIN
    DELETE FROM ComplaintsOnOrders WHERE
    ComplaintsOnOrders.ComplaintID IN 
    (
        SELECT ComplaintID
    FROM Complaints
    );
END



