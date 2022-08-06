# SQL query to report all the classes that have at least five students.
select class from 
    (
        select class,count(DISTINCT student) 
        from Courses
        group by class 
        having count(DISTINCT student)>=5
    ) 
        as t1