-- Problem 180: Consecutive Numbers

-- Approach:
-- We need to find numbers that appear at least
-- three times consecutively.
-- Use three aliases of the Logs table.
-- Check that the IDs are consecutive:
-- l1.Id = l2.Id - 1 and l2.Id = l3.Id - 1.
-- Check that all three rows have the same number.
-- Use DISTINCT to avoid duplicate results.

Query :-

SELECT DISTINCT
    l1.Num AS ConsecutiveNums
FROM
    Logs l1,
    Logs l2,
    Logs l3
WHERE
    l1.Id = l2.Id - 1
    AND l2.Id = l3.Id - 1
    AND l1.Num = l2.Num
    AND l2.Num = l3.Num;
