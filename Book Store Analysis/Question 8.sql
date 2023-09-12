-- Question 8: List the titles of books ordered by a customer with the email 'john@example.com'.books
select books.title, email
from orders
join  customers on customers.customer_id =  orders.customer_id
join  order_items on order_items.order_id = orders.order_id
join books on books.book_id = order_items.book_id
where email = 'john@example.com';
