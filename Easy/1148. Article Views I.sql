# Write an SQL query to find all the authors that viewed at least one of their own articles.
select distinct author_id as id 
from Views 
where author_id = viewer_id
order by id