-- Question 3
-- Find customers who have placed at least one order
-- and display their total spending.

SELECT c.customer_id, ROUND(SUM(o.quantity * p.price)::numeric,2) AS total_spend
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON p.product_id = o.order_id
GROUP BY c.customer_id
ORDER BY total_spend DESC;