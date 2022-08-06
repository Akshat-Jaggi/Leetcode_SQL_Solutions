# Write an SQL query to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.
#Return the result table ordered by id in ascending order.

/*SELECT (CASE WHEN MOD(id,2)=1 AND id!=(SELECT COUNT(*) FROM seat) THEN id+1
WHEN MOD(id,2)=0 THEN id-1
ELSE id END)id, student
FROM seat
order by id*/

/*SELECT *
FROM
(SELECT id+1 as id, student FROM seat WHERE id%2=1 AND id not in (select max(id) from seat)
UNION
SELECT id-1 as id, student FROM seat WHERE id%2=0
UNION
SELECT id, student FROM seat WHERE id%2=1 and id in (select max(id) from seat)
) as s
ORDER BY id*/

SELECT 
     ID,
     IFNULL(CASE WHEN id % 2 != 0 
                 THEN lead(student) over ()  
                 ELSE lag(student) over ()
            END, student
            ) AS student
     FROM seat;