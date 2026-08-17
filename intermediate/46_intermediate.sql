-- Question 36
-- Display every order along with the product category.
SELECT o.order_id, p.product_id
FROM testschema.orders o
JOIN testschema.products p
ON o.produc_id = p.product_id