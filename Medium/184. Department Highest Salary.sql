# Write an SQL query to find employees who have the highest salary in each of the departments.
# Return the result table in any order.

select 
d.name as "Department",
e.name as "Employee",
e.salary as Salary 
from Employee e left join Department d 
on e.departmentId = d.id
where (e.DepartmentId,Salary) in
 (   SELECT
            DepartmentId, MAX(Salary)
        FROM
            Employee
        GROUP BY DepartmentId
 )