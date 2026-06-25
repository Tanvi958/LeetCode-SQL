-- Problem 262: Trips and Users

-- Approach:
-- We need to calculate the cancellation rate for each day.
-- Consider only trips where both the client and driver
-- are not banned.
-- Filter trips between '2013-10-01' and '2013-10-03'.
-- Count cancelled trips using the status column.
-- Divide cancelled trips by total trips for each day.
-- Round the cancellation rate to 2 decimal places.
-- Group the results by request date.

Query :-

SELECT
    t.request_at AS Day,
    ROUND(
        AVG(
            CASE
                WHEN t.status != 'completed' THEN 1
                ELSE 0
            END
        ),
        2
    ) AS 'Cancellation Rate'
FROM Trips t
JOIN Users c
    ON t.client_id = c.users_id
JOIN Users d
    ON t.driver_id = d.users_id
WHERE c.banned = 'No'
    AND d.banned = 'No'
    AND t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY t.request_at;
