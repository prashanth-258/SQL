-- Question 7: Find the customer who has spent the most on orders.
SELECT customers.first_name as cust_name,sum(order_items.quantity * books.price) as total_spent
FROM bookstore.orders
join customers on customers.customer_id = orders.customer_id
join order_items on order_items.order_id = orders.order_id
join books on books.book_id = order_items.book_id
group by cust_name
ORDER BY total_spent DESC
LIMIT 1;