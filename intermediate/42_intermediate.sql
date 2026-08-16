-- Question 32
-- Find product categories that contain more than 10 products.

SELECT category, COUNT(*) AS catogory_count
FROM testschema.products
GROUP BY category
HAVING COUNT(*) > 100;