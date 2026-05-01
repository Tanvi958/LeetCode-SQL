Problem 1633 – Percentage of Users Attended a Contest

Approach:

1. Count total number of users.
2. For each contest:
  Count distinct users who registered.

  Compute percentage =
    percentage= (total users/ registered users) × 100

3.Round percentage to 2 decimal places.
4. Sort:
  By percentage descending
  Then by contest_id ascending

Query: 

SELECT 
    r.contest_id,
    ROUND(COUNT(DISTINCT r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
