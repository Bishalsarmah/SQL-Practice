-- Question 37
-- Display order_id, customer_id, product_name, order_date and quantity.
SELECT o.order_id,
c.customer_id,
p.product_name,
o.order_date,
o.quantity
FROM testschema.orders o
JOIN testschema.customers c
ON o.customer_id = c.customer_id
JOIN testschema.prodducts p
ON o.product_name = p.product_name