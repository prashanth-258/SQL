-- Question 1: List the titles of all books published in or after the year 2000.
SELECT title, publication_year
FROM Books
WHERE publication_year >= 1900;