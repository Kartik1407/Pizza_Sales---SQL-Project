-- Q3. Identify the highest-priced pizza.

select max(price) from pizzas;
-- above query will only display the highest price

select pizza_types.name, pizzas.price
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id     -- this will provide the entire list of pizza names and its prices
order by price desc 									-- this will provide the entire list in descending order by prices
limit 1;												-- this will provide max price
