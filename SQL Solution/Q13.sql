-- Q13. Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select category, name, revenue,
rank() over(partition by category order by revenue desc) as rnk
from
(select pizza_types.category, pizza_types.name,
sum(orderdetails.quantity * pizzas.price) as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orderdetails
on orderdetails.pizzaid = pizzas.pizza_id
group by pizza_types.category, pizza_types.name) as A;