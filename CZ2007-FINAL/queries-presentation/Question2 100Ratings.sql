-- Question 2
-- Table that shows the Ratings given for each ProductName
SELECT ProductName, FeedbackDateTime, Rating
FROM Feedback
    INNER JOIN Products
    ON Feedback.PID = Products.PID

-- Filtering out the Ratings given to the month of August 2020
SELECT ProductName, FeedbackDateTime, Rating
FROM Feedback
    INNER JOIN Products
    ON Feedback.PID = Products.PID
WHERE [FeedbackDateTime] >= '2020-08-01'
    AND [FeedbackDateTime] < '2020-09-01'

-- Group table based on Product Name and Rating
SELECT ProductName, Rating, COUNT(*) AS CountNumOfRating
FROM Feedback
    INNER JOIN Products
    ON Feedback.PID = Products.PID
        AND [FeedbackDateTime] >= '2020-08-01'
        AND [FeedbackDateTime] < '2020-09-01'
GROUP BY ProductName, Rating
ORDER BY ProductName

-- Get ProductName with at least 5 ratings of Rating 5 (SubQuery)
SELECT ProductName, Rating, COUNT(*) AS CountNumOfRating
FROM Feedback
    INNER JOIN Products
    ON Feedback.PID = Products.PID
        AND [FeedbackDateTime] >= '2020-08-01'
        AND [FeedbackDateTime] < '2020-09-01'
GROUP BY ProductName, Rating
HAVING Rating = 5 AND COUNT(*) > 100

-- Get all feedback of product with at least 5 5 ratings
SELECT ProductName, Rating, FeedbackDateTime
FROM Feedback
    INNER JOIN Products
    ON Feedback.PID = Products.PID
WHERE [FeedbackDateTime] >= '2020-08-01'
    AND [FeedbackDateTime] < '2020-09-01'
    AND ProductName IN (SELECT ProductName
    FROM Feedback
        INNER JOIN Products
        ON Feedback.PID = Products.PID
            AND [FeedbackDateTime] >= '2020-08-01'
            AND [FeedbackDateTime] < '2020-09-01'
    GROUP BY ProductName, Rating
    HAVING Rating = 5 AND COUNT(*) > 100)
ORDER BY ProductName

-- Number of Ratings corresponding to the Rating for every ProductName
SELECT ProductName, Rating, COUNT(RATING) AS NumberOfRating
FROM Feedback
    INNER JOIN Products
    ON Feedback.PID = Products.PID
WHERE [FeedbackDateTime] >= '2020-08-01'
    AND [FeedbackDateTime] < '2020-09-01'
    AND ProductName IN (SELECT ProductName
    FROM Feedback
        INNER JOIN Products
        ON Feedback.PID = Products.PID
            AND [FeedbackDateTime] >= '2020-08-01'
            AND [FeedbackDateTime] < '2020-09-01'
    GROUP BY ProductName, Rating
    HAVING Rating = 5 AND COUNT(*) >= 100)
GROUP BY ProductName, Rating
ORDER BY ProductName

--Final
SELECT ProductName, ROUND(AVG(CAST(Rating AS FLOAT)), 2) AS AvgRating
FROM Feedback
    INNER JOIN Products
    ON Feedback.PID = Products.PID
WHERE [FeedbackDateTime] >= '2020-08-01'
    AND [FeedbackDateTime] < '2020-09-01'
    AND ProductName IN (SELECT ProductName
    FROM Feedback
        INNER JOIN Products
        ON Feedback.PID = Products.PID
            AND [FeedbackDateTime] >= '2020-08-01'
            AND [FeedbackDateTime] < '2020-09-01'
    GROUP BY ProductName, Rating
    HAVING Rating = 5 AND COUNT(*) >= 100)
GROUP BY ProductName