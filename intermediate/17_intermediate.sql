-- Question 7
-- Find all products whose price is between 100 and 200.

SELECT product_name, price
FROM testschema.products
WHERE price BETWEEN 100 AND 200;