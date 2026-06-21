-- Problem 1193: Monthly Transactions I

-- Approach:
-- We need to generate monthly transaction statistics
-- for each country.
-- Extract the year and month from trans_date using DATE_FORMAT().
-- Group records by month and country.
-- Count all transactions as trans_count.
-- Count approved transactions using CASE WHEN.
-- Sum all transaction amounts as trans_total_amount.
-- Sum amounts of approved transactions as approved_total_amount.
-- Return the required aggregated results.

Query :-

SELECT
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country;
