-- Question 2
-- Find all customers whose age is between 25 and 40.
SELECT * FROM testschema.customers
WHERE age<=25 AND age>=40;

-- OR ----
SELECT * FROM testschema.customers
WHERE age BETWEEN 25 AND 40;