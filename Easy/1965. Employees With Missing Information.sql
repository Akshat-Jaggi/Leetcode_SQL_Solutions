# Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:
# -> The employee's name is missing, or
# -> The employee's salary is missing.
# Return the result table ordered by employee_id in ascending order.

(select employee_id from Employees where employee_id not in (select employee_id from Salaries))
union
(select employee_id from Salaries where employee_id not in  (select employee_id from Employees))
order by employee_id