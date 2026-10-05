-- Question 49
-- Find the top 10 products based on total quantity sold.

SELECT p.product_id, p.product_name, SUM(o.quantity) as total_quantity
FROM public.products p
JOIN public.orders o
ON p.product_id = o.product_id
GROUP BY p.product_id,p.product_name
ORDER BY total_quantity DESC
LIMIT 10;