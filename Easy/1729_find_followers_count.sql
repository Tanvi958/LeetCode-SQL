-- Problem 1729: Find Followers Count

-- Approach:
-- We need to count how many followers each user has.
-- Group records by user_id.
-- Use COUNT(*) to count total followers for each user.
-- Sort the result by user_id in ascending order.

Query :-

SELECT
    user_id,
    COUNT(*) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;
