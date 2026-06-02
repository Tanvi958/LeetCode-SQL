-- Problem 178: Rank Scores

-- Approach:
-- We need to rank scores in descending order.
-- Equal scores should have the same rank.
-- Higher scores get better (smaller) ranks.
-- For each score, count the number of distinct scores
-- greater than or equal to it.
-- This count represents the rank.
-- Finally, sort the result by score in descending order.

Query :-

SELECT
    s1.Score,
    (
        SELECT COUNT(DISTINCT s2.Score)
        FROM Scores s2
        WHERE s2.Score >= s1.Score
    ) AS 'Rank'
FROM Scores s1
ORDER BY s1.Score DESC;
