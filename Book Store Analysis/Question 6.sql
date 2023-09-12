-- Question 6: Calculate the average price of books in each genre.
SELECT avg(price),genre FROM
bookstore.books
group by genre;