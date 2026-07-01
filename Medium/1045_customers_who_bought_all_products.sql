-- Problem 1045: Customers Who Bought All Products

-- Approach:
-- We need to find customers who have purchased every product.
-- Group records by customer_id.
-- Count the number of distinct products purchased by each customer.
-- Find the total number of products available in the Product table.
-- Keep only those customers whose distinct product count
-- matches the total product count.
-- Return the qualifying customer_ids.

Query :-

SELECT
    customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (
    SELECT COUNT(*)
    FROM Product
);
