# Write an SQL query to report the names of all the salespersons who did not have any orders related to the company with the name "RED"

select name from SalesPerson where sales_id not in
( 
  select sales_id from Orders 
  where com_id = (
  select com_id from Company 
  where name = 'Red'
 )
) 