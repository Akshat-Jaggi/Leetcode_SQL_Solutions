# Write an SQL query to find for each user, the join date and the number of orders they made as a buyer in 2019. Return the result table in any order.


# select user_id buyer_id, join_date, sum(if(order_date like "2019-%",1,0)) orders_in_2019
# from Users left join Orders
# on buyer_id = user_id
# group by user_id

SELECT U.USER_ID AS BUYER_ID, U.JOIN_DATE, IFNULL(COUNT(ORDER_DATE), 0) AS orders_in_2019
FROM USERS U
LEFT JOIN ORDERS O
    ON U.USER_ID = O.BUYER_ID
    AND ORDER_DATE LIKE '2019%' #or can use year(order_date) = "2019"
GROUP BY U.USER_ID