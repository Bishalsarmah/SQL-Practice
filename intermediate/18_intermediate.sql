-- Question 8
-- Find all products belonging to the 'Electronics' category.

SELECT products_name, category
FROM testschema.products
WHERE category = "Electronics";