-- Question 12
-- Display the 10 most expensive products.
SELECT * FROM testschema.products
ORDER BY price DESC
LIMIT 5;