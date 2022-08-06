# Write an SQL query to report the name and balance of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.

select name,balance 
from (select name,sum(amount) as balance from Transactions as t1 
      inner join Users as t2
      on t1.account = t2.account
      group by t1.account
     ) as t3
where balance > 10000