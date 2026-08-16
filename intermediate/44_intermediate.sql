-- Question 34
-- Find cities where the average customer age is greater than 40.
SELECT city, ROUND(AVG(age),2) AS Average_Age
FROM testschema.customers
GROUP BY city
HAVING AVG(age) > 40;