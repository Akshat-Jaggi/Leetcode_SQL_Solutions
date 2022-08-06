# Write an SQL query to report the distance traveled by each user.
# Return the result table ordered by travelled_distance in descending order, if two or more users traveled the same distance, order them by their name in ascending order.

select t2.name,coalesce(travelled_distance,0) as travelled_distance 
from (
        (select user_id,sum(distance) as travelled_distance 
         from Rides where user_id in (select id from Users) 
        group by user_id) as t1 
        right join Users as t2 
        on t1.user_id = t2.id
     )
order by travelled_distance desc,name asc