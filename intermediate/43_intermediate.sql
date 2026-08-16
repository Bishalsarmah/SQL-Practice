-- Question 33
-- Find products whose total ordered quantity is greater than 100.

SELECT p.product_name, SUM(o.quantity) AS Total_quantity
FROM testschema.products p
JOIN testschema.orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
HAVING SUM(o.quantity) > 100;