Problem 181 – Employees Earning More Than Their Managers

Approach:

1. Understand the relationship
  
2. Use Self Join
  Create two references:
  e → employee
  m → manager
  
3. Join condition
  Connect employee to manager:
  e.managerId = m.id

4. Apply condition
  Filter employees whose salary is greater:
  e.salary > m.salary

5. Select required output
  Return only employee names

Query: 

SELECT e.name AS Employee
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;
