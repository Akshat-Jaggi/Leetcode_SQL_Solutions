#Find the customer who has placed the largest number of orders.
select customer_number from Orders 
group by customer_number 
having count(customer_number) = (select max(count1) from 
 (select customer_number,count(customer_number) count1
    from Orders
    group by customer_number) as t1) 