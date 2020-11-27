--Question 4
-- Find time taken for each employee to process each complaint
SELECT EmployeeName, Complaints.ComplaintID, DATEDIFF(HOUR,FilledDateTime,HandledDateTime) as TimeTakenInHours
FROM Complaints, Employees
WHERE Employees.EID = Complaints.EID

-- Find the total time taken to finish the corresponding number of complaints
-- Sorted by Ascending Order for Total Time Taken
SELECT EmployeeName, COUNT(EmployeeName) AS NumberOfComplaints, SUM(DATEDIFF(HOUR,FilledDateTime,HandledDateTime)) as TotalTimeTaken
FROM Complaints, Employees
WHERE Employees.EID = Complaints.EID
GROUP BY Employees.EmployeeName
ORDER BY TotalTimeTaken ASC

-- Find Average Latency Hours for each employee
SELECT EmployeeName, AVG(DATEDIFF(HOUR,FilledDateTime,HandledDateTime)) as LatencyHours
FROM Complaints, Employees
WHERE Employees.EID = Complaints.EID
GROUP BY Employees.EmployeeName
ORDER BY LatencyHours ASC

-- Give the name of the employee with the smallest latency
SELECT TOP 1
    EmployeeName, AVG(DATEDIFF(HOUR,FilledDateTime,HandledDateTime)) as SmallestLatencyHours
FROM Complaints, Employees
WHERE Employees.EID = Complaints.EID
GROUP BY Employees.EmployeeName
ORDER BY SmallestLatencyHours ASC