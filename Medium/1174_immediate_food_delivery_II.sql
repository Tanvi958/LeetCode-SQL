-- Problem 1174: Immediate Food Delivery II

-- Approach:
-- We need to find the percentage of customers whose
-- first order was delivered on their preferred delivery date.
-- First, identify each customer's first order using
-- the minimum order_date.
-- Check whether the first order's order_date matches
-- the customer_pref_delivery_date.
-- Count such immediate orders and divide by the total
-- number of customers.
-- Multiply by 100 and round the result to 2 decimal places.

Query :-

SELECT
    ROUND(
        AVG(
            CASE
                WHEN order_date = customer_pref_delivery_date THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
    SELECT
        customer_id,
        MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);
