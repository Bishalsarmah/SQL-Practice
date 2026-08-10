
-- Question 5
-- Find all customers who are NOT loyalty members.
SELECT * FROM testschema.customers
WHERE loyalty_member = 'No';