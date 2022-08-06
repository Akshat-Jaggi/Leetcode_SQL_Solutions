select distinct a.num as ConsecutiveNums
from Logs a
inner join Logs b on b.id=a.id+1 and b.num=a.num
inner join Logs c on c.id=a.id+2 and c.num=a.num

/*SELECT DISTINCT num as ConsecutiveNums
FROM
(
SELECT num, LEAD(num, 1) OVER(ORDER BY id) AS ld, LAG(num, 1) OVER (ORDER BY id) AS lg
FROM logs
)t
WHERE num=ld and num=lg;*/