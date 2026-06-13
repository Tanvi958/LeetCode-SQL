-- Problem 185: Department Top Three Salaries

-- Approach:
-- We need to find employees whose salaries are
-- among the top 3 distinct salaries in their department.
-- Join Employee and Department tables to get
-- department names.
-- For each employee, count the number of distinct
-- salaries in the same department that are greater
-- than the employee's salary.
-- If fewer than 3 distinct salaries are greater,
-- the employee belongs to the top 3 salary ranks.
-- Return department name, employee name, and salary.

Query :-

SELECT
    d.name AS Department,
    e1.name AS Employee,
    e1.salary AS Salary
FROM Employee e1
JOIN Department d
    ON e1.departmentId = d.id
WHERE (
    SELECT COUNT(DISTINCT e2.salary)
    FROM Employee e2
    WHERE e2.departmentId = e1.departmentId
      AND e2.salary > e1.salary
) < 3;
