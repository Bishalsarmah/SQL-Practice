-- Question 38
-- Display order_id, product_name, price and quantity.
SELECT o.order_id,
p.product_name,
p.price,
o.quantity
FROM testschema.orders o
JOIN testschema.products p
ON o.product_id = p.product_id