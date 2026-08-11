-- Question 13
-- Display the 10 cheapest products.

SELECT * FROM testschema.products
ORDER BY price
LIMIT 10;