-- Question 4
-- Find all customers who are loyalty members.

SELECT * FROM testschema.customers
WHERE loyalty_member = 'Yes';