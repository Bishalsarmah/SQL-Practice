-- Question 15
-- Display the 20 orders with the highest quantity.

SELECT * 
FROM testschema.orders
ORDER BY quantity DESC
LIMIT 20;