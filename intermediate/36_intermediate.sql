-- Question 26
-- Find the number of products in each category.

SELECT category, COUNT(*)
FROM testschema.products
GROUP BY category;