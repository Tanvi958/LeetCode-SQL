-- Problem 596: Classes More Than 5 Students

-- Approach:
-- We need to find classes that have at least 5 students.
-- Group records by class name.
-- Use COUNT(DISTINCT student) to count unique students
-- in each class.
-- Filter grouped results using HAVING.

Query :-

SELECT
    class
FROM Courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5;
