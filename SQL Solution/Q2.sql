-- Q2. Calculate the total revenue generated from pizza sales.	

SELECT 
    ROUND(SUM(orderdetails.quantity * pizzas.price),
            2) AS total_revenue
FROM
    orderdetails
        JOIN
    pizzas ON pizzas.pizza_id = orderdetails.pizzaid


