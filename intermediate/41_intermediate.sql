-- Question 31
-- Find cities that have more than 100 customers.
SELECT city, COUNT(*) AS customer_count
FROM testschema.customers
GROUP BY city
HAVING COUNT(*) > 100;