-- Question 35
-- Display every order along with the product name.

SELECT o.order_id, p.product_name
FROM testschema.orders o
JOIN testschema.products p
ON o.produc_id = p.product_id