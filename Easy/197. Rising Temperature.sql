# select Weather.id from Weather 
# JOIN Weather as w
# on w.recordDate = SUBDATE(Weather.recordDate,1)
# WHERE Weather.Temperature > w.Temperature

SELECT DISTINCT a.Id
FROM Weather a,Weather b
WHERE a.Temperature > b.Temperature
AND DATEDIFF(a.Recorddate,b.Recorddate) = 1