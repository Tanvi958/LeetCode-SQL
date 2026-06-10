-- Problem 184: Department Highest Salary

-- Approach:
-- We need to find the employee(s) with the highest
-- salary in each department.
-- Join Employee and Department tables to get
-- department names.
-- For each employee, compare their salary with
-- the maximum salary in their department.
-- Use a correlated subquery to find the highest
-- salary for the employee's department.
-- Return department name, employee name, and salary.

Query :-

SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Employee e
JOIN Department d
    ON e.departmentId = d.id
WHERE e.salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE departmentId = e.departmentId
);
