-- Problem 550: Game Play Analysis IV

-- Approach:
-- We need to find the fraction of players who logged in
-- again on the day immediately after their first login.
-- First, determine each player's first login date.
-- Join this result with the Activity table.
-- Check whether the player logged in on the day after
-- their first login date.
-- Count such players and divide by the total number of players.
-- Round the result to 2 decimal places.

Query :-

SELECT
    ROUND(
        COUNT(DISTINCT a.player_id) /
        (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
FROM Activity a
JOIN (
    SELECT
        player_id,
        MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) f
ON a.player_id = f.player_id
AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY);
