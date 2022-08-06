#Write an SQL query to fix the names so that only the first character is uppercase and the rest are lowercase.
#Return the result table ordered by user_id.

select user_id,
CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) as name
from Users
order by user_id