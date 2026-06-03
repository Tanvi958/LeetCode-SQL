-- Problem 176: Second Highest Salary

-- Approach:
-- We need to find the second highest distinct salary.
-- Sort salaries in descending order.
-- Use DISTINCT to remove duplicate salaries.
-- Skip the highest salary using OFFSET 1.
-- Select the next salary using LIMIT 1.
-- If a second highest salary does not exist,
-- the result will be NULL.

Query :-

SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
