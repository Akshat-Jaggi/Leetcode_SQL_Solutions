select d.Name as Department, a. Name as Employee, a. Salary 
from (
select e.*, dense_rank() over (partition by DepartmentId order by Salary desc) as DeptPayRank 
from Employee e 
) a 
join Department d
on a. DepartmentId = d. Id 
where DeptPayRank <=3