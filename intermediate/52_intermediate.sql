-- Question 42
-- Find the total quantity ordered by each customer.
SELECT c.customer_id, SUM(o.quantity) AS Total_orders
FROM testschema.orders o
JOIN testschema.customers c 
ON o.customer_id = c.customer_id
GROUP BY c.customer_id;