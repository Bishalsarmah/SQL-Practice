-- Question 25
-- Find the number of loyalty members and non-loyalty members.

SELECT loyalty_member, COUNT(*)
FROM testschema.customers
GROUP BY loyalty_member;