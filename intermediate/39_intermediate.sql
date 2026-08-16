-- Question 29
-- Find the minimum product price in each category.
SELECT category, MIN(price) AS Minimum_price
FROM testschema.products
GROUP BY category;