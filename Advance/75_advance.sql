-- Question 5
-- Find customers who have purchased products from
-- at least 3 different categories.

SELECT c.customer_id, COUNT(DISTINCT(p.category)) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON p.product_id = o.product_id
GROUP BY c.customer_id 
HAVING COUNT(DISTINCT(p.catory)) >=3
ORDER BY total_orders DESC