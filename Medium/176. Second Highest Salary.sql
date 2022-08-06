# Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.

SELECT max(salary) as SecondHighestSalary 
FROM Employee 
WHERE salary 
NOT IN (SELECT max(salary) FROM Employee)