
-- Question 27
-- Find the average product price for each category.

SELECT category, ROUND(AVG(price),2) AS AVG_Price
FROM testschema.products
GROUP BY category;