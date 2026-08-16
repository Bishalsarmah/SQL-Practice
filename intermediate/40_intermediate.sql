-- Question 30
-- Find the total quantity ordered for each product.

SELECT p.product_name, SUM(o.quantity) AS Total_count
FROM testschema.products p
JOIN testschema.orders o
ON p.product_id = o.product_id
GROUP BY p.product_name;