-- Q12. Analyze the cumulative revenue generated over time.

Select orderdate, round(revenue,2) as revenue,
round(sum(revenue) over(order by orderdate),2) as cum_revenue
from
(select orders.orderdate,
sum(orderdetails.quantity * pizzas.price) as revenue
from orderdetails join pizzas
on orderdetails.pizzaid = pizzas.pizza_id
join orders
on orderdetails.orderid = orders.orderid
group by orders.orderdate) as sales;