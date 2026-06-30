-- Problem 511: Game Play Analysis I

-- Approach:
-- We need to find the first login date for each player.
-- Group records by player_id.
-- Use MIN(event_date) to get the earliest login date.
-- Return the player_id and the first login date.
-- Rename the result column as first_login.

Query :-

SELECT
    player_id,
    MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;
