-- Question 39
-- Calculate the total value of each order.
--
-- Formula:
-- quantity * price
--
-- Display:
-- order_id
-- product_name
-- quantity
-- price
-- total_value
SELECT o.order_id,
p.product_name,
o.quantity,
p.price,
o.quantity * p.price AS total_value
FROM testschema.orders o
JOIN testschema.products p
ON o.product_id = p.product_id