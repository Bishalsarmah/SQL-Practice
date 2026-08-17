-- Question 40
-- Find the total revenue generated from all orders.
SELECT SUM(o.quantity * p.price) AS total_revenue
FROM testschema.orders o
JOIN testschema.products p 
ON o.product_id = p.product_id