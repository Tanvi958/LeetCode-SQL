-- Problem 619: Biggest Single Number

-- Approach:
-- We need to find the largest number that appears only once.
-- First, group numbers using GROUP BY.
-- Use HAVING COUNT(num) = 1 to keep only unique numbers.
-- Then use MAX(num) to get the biggest single number.
-- If no unique number exists, result will be NULL.

Query :-

SELECT
    MAX(num) AS num
FROM
(
    SELECT
        num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS unique_numbers;
