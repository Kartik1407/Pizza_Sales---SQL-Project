-- Q11. Calculate the percentage contribution of each pizza type(category) to total revenue.

select pizza_types.category, 
round(sum(orderdetails.quantity*pizzas.price) / (SELECT 
round(sum(orderdetails.quantity*pizzas.price),
2) as totalsales
from 
orderdetails join pizzas
on orderdetails.pizzaid = pizzas.pizzaid)*100,2) as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orderdetails
on orderdetails.pizzaid = pizzas.pizza_id
group by pizza_types.category order by revenue desc;
