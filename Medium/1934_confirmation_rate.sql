-- Problem 1934: Confirmation Rate
-- Platform: LeetCode
-- Difficulty: Medium

-- Approach:
-- We need to calculate the confirmation rate
-- for each user.
--
-- Confirmation Rate Formula:
--      confirmed requests / total requests
--
-- Key Observation:
-- - A confirmed action contributes 1.
-- - Any other action contributes 0.
-- - AVG() of these values directly gives
--   the confirmation rate.
-- - Users with no confirmation records should
--   have a rate of 0.
--
-- Steps:
-- 1. Perform a LEFT JOIN between Signups and
--    Confirmations to include all users.
-- 2. Use CASE:
--      - 'confirmed' → 1
--      - otherwise → 0
-- 3. Compute AVG() to get the confirmation rate.
-- 4. Use IFNULL() to handle users with no
--    confirmation records.
-- 5. Round the result to 2 decimal places.
-- 6. Group by user_id.
--
-- Time Complexity: O(n)
-- Space Complexity: O(1)

SELECT
    s.user_id,

    ROUND(
        IFNULL(
            AVG(
                CASE
                    WHEN c.action = 'confirmed' THEN 1
                    ELSE 0
                END
            ),
            0
        ),
        2
    ) AS confirmation_rate

FROM Signups s

LEFT JOIN Confirmations c
    ON s.user_id = c.user_id

GROUP BY s.user_id;
