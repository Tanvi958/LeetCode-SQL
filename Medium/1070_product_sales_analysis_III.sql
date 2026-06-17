-- Problem 1070: Product Sales Analysis III

-- Approach:
-- We need to find the first year each product was sold.
-- For every product, get the minimum year using MIN(year).
-- Match each product with its first sales year.
-- Return the product_id, first_year, quantity, and price
-- from that first sales record.
-- Use a subquery with GROUP BY to identify the earliest year
-- for each product.

Query :-

SELECT
    product_id,
    year AS first_year,
    quantity,
    price
FROM Sales
WHERE (product_id, year) IN (
    SELECT
        product_id,
        MIN(year)
    FROM Sales
    GROUP BY product_id
);
