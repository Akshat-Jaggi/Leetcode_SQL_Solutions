# Write an SQL query to report the latest login for all users in the year 2020. Do not include the users who did not login in 2020.

select user_id,MAX(time_stamp) as last_stamp
from Logins 
where EXTRACT(YEAR from time_stamp) = 2020
group by user_id
