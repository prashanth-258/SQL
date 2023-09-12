-- Question 4: Find the top 5 best-selling books (by total quantity sold) along with their titles and authors' names.
select title,authors.author_name, sum(order_items.quantity) as total_qty
from books
join authors on authors.author_id = books.author_id
join order_items on order_items.book_id = books.book_id
group by title,authors.author_name
order by total_qty DESC
limit 5;