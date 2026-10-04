-- Question 46
-- Find the total quantity sold for each product.
SELECT p.product_name, SUM(o.quantity) AS total_orders
FROM public.orders o
JOIN public.products p
ON o.product_id = p.product_id
GROUP BY p.product_name 
ORDER BY total_orders
LIMIT 10;