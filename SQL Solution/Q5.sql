-- Q5. List the top 5 most ordered pizza types along with their quantities.

select pizzas.pizza_id, count(orderdetails.quantity)
from orderdetails join pizzas
on orderdetails.pizzaid = pizzas.pizza_id
group by pizzaid
order by count(orderdetails.quantity) desc
limit 5;

select pizza_types.name, sum(orderdetails.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orderdetails
on orderdetails.pizzaid = pizzas.pizza_id
group by pizza_types.name order by quantity desc
limit 5;												-- this code is right one
