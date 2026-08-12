-- Question 24
-- Find the average age of customers in each city.

SELECT city, ROUND(AVG(age),2) AS Average_Age
FROM testschema.customers
GROUP BY city
