select activity_date as day,count(distinct user_id) as active_users  
from Activity
group by activity_date 
having activity_date 
between date_sub("2019-07-27",interval 29 day) and "2019-07-27"