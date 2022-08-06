select c1.name from Customer c1 left join Customer c2 
on c1.referee_id = c2.id 
where c2.name != "Jane" or c2.name is NULL