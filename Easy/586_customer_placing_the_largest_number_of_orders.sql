-- Problem 586: Customer Placing the Largest Number of Orders

-- Approach:
-- We need to find the customer who placed the most orders.
-- Group orders by customer_number.
-- Count the number of orders for each customer.
-- Sort the customers in descending order of order count.
-- Return the customer with the highest number of orders.
-- LIMIT 1 ensures only the top customer is returned.

Query :-

SELECT
    customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;
