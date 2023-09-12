-- Question 5: Get the names of customers who have placed at least 2 orders.
select  customers.first_name  as customers,count(order_id) as total_orders
from orders
join customers on customers.customer_id = orders.customer_id
group by customers
having  total_orders >= 2;