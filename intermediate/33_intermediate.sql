-- Question 23
-- Find the number of customers in each city.

SELECT city, COUNT(*)
FROM testschema.customers
GROUP BY city;