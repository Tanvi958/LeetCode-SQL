Problem 183 – Customers Who Never Order

Approach:

Join all customers with orders
Customers without orders → NULL in Orders columns
Filter using WHERE o.id IS NULL

Query: 

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.id IS NULL;
