-- Problem 1211: Queries Quality and Percentage

-- Approach:
-- We need to calculate:
-- 1. Query quality = average of (rating / position)
-- 2. Poor query percentage = percentage of queries
--    having rating less than 3.
-- Group records by query_name.
-- Use AVG() for quality calculation.
-- Use CASE WHEN to count poor queries.
-- ROUND values to 2 decimal places.

Query :-

SELECT
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND(
        100 * SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
