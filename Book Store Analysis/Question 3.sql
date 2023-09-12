-- Question 3: Calculate the total price for each order.

SELECT o.order_id, SUM(b.price * oi.quantity) AS total_price
FROM Orders AS o
JOIN Order_Items AS oi ON o.order_id = oi.order_id
JOIN Books AS b ON oi.book_id = b.book_id
GROUP BY o.order_id;