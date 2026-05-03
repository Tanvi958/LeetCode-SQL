Problem 182 – Duplicate Emails

Approach:

Group all rows by email
Count how many times each email appears
Select only those emails where count > 1

Query: 

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;
