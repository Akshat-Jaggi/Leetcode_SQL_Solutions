# Write an SQL query to report the Capital gain/loss for each stock.
#The Capital gain/loss of a stock is the total gain or loss after buying and selling the stock one or many times.


select stock_name,(sell_sum-buy_sum) as capital_gain_loss 
from(select stock_name,
			sum(case when operation='Sell' then price else 0 end) as sell_sum,
			sum(case when operation='Buy' then price else 0 end) as buy_sum 
	from stocks group by stock_name ) as p
    
# select a.stock_name, sell-buy as capital_gain_loss
# from
# (select stock_name, sum(price) as buy from Stocks where operation = 'Buy' group by stock_name) a
# INNER JOIN 
# (select stock_name, sum(price) as sell from Stocks where operation = 'Sell' group by stock_name) b
# ON a.stock_name = b.stock_name


# SELECT
# 	stock_name, SUM(CASE WHEN operation = 'Buy' THEN price*-1 ELSE price END) AS capital_gain_loss
# FROM stocks
# GROUP BY stock_name