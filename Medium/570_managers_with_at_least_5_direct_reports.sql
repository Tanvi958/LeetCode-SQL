-- Problem 570: Managers with at Least 5 Direct Reports

-- Approach:
-- We need to find managers who have at least 5 direct reports.
-- Self join Employee table:
-- e1 represents managers
-- e2 represents employees reporting to managers.
-- Match manager's id with employee's managerId.
-- Group results by manager details.
-- Use HAVING to filter managers with 5 or more employees.

Query :-

SELECT
    e1.name
FROM Employee e1
JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(e2.id) >= 5;
