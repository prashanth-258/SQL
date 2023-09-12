-- Question 9: Calculate the total revenue for each year,based on the order dates.
SELECT sum(books.price * order_items.quantity) as total_price,year(orders.order_date) as Year
FROM bookstore.orders
join order_items on order_items.order_id = orders.order_id
join books on books.book_id = order_items.book_id
group by year;