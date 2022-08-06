# Write an SQL query to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee name does not start with the character 'M'. The bonus of an employee is 0 otherwise.

select 
employee_id,
CASE
when employee_id%2 = 1 and name not like "M%" then salary 
else salary = 0
end as bonus
from Employees
order by employee_id
