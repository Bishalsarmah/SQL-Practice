-- Question 28
-- Find the maximum product price in each category.

SELECT category, MAX(price) AS max_price
FROM testschema.products
GROUP BY catogory;