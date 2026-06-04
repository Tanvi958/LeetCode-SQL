-- Problem 177: Nth Highest Salary

-- Approach:
-- We need to find the Nth highest distinct salary.
-- Subtract 1 from N because OFFSET starts from 0.
-- Use DISTINCT to remove duplicate salaries.
-- Sort salaries in descending order.
-- Skip the first (N - 1) salaries using OFFSET.
-- Return the salary at the Nth position.
-- If the Nth highest salary does not exist,
-- the function returns NULL.

Query :-

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;

    RETURN (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1 OFFSET N
    );
END
