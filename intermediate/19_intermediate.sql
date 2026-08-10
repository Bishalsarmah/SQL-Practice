-- Question 9
-- Find all products whose product_name contains the word 'Watch'.

SELECT * FROM testschema.products
WHERE product_name LIKE '%Watch%';