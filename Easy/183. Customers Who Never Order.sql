Select customers.name as 'Customers'
from customers
where customers.id NOT IN
(
    select customerid from orders 
)