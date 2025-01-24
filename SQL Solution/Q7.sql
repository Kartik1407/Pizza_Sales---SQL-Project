-- Q7. Determine the distribution of orders by hour of the day.

select hour(ordertime), count(orderid) from orders
group by hour(ordertime);