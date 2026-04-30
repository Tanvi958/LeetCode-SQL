Problem 1757 – Recyclable and Low Fat Products

Approach:

We need to filter products that are both low fat and recyclable.
This can be done using the WHERE clause with conditions on both columns.
Since both conditions must be true, we use the AND operator.

Query: 

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
