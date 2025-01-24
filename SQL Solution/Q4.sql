-- Q4. Identify the most common pizza size ordered.

select quantity, count(orderdetailsid)
from orderdetails group by quantity;		-- got to know how many rows have 1 qty or 2 or 3 etc..

select pizzas.size, count(orderdetails.orderdetailsid)
from pizzas join orderdetails
on pizzas.pizza_id = orderdetails.pizzaid
group by pizzas.size						-- provide no of orders group by pizza size
order by count(orderdetails.orderdetailsid) desc;		-- this will sort data as per orders placed




