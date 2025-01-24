-- Q9. Group the orders by date and calculate the average number of pizzas ordered per day.

 Select avg(qty) from 
 (select orders.orderdate, sum(orderdetails.quantity) as qty
 from orders join orderdetails
 on orders.orderid = orderdetails.orderid
 group by orders.orderdate) as Order_quantity;

--select orders.orderdate, sum(orderdetails.quantity) as qty
--from orders join orderdetails
--on orders.orderid = orderdetails.orderid
--group by orders.orderdate;
