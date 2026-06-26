-- Problem 196: Delete Duplicate Emails

-- Approach:
-- We need to delete duplicate email records.
-- For each email, keep the record with the smallest id.
-- Delete all other records having the same email.
-- Use a self join to compare rows with identical emails.
-- If a row has a larger id than another row with the same email,
-- it is considered a duplicate and should be deleted.

Query :-

DELETE p1
FROM Person p1
JOIN Person p2
    ON p1.email = p2.email
WHERE p1.id > p2.id;
