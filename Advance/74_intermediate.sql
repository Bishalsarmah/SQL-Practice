-- Question 4
-- Find customers who have purchased products from
-- more than one category.

SELECT c.customer_id, COUNT(DISTINCT(p.category)) AS total_category
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON p.product_id = o.product_id
GROUP BY c.customer_id
HAVING COUNT(DISTINCT(p.category)) > 1
ORDER BY total_category DESC