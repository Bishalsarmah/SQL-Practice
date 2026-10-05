-- Question 48
-- Find the top 10 products based on total revenue.

SELECT p.product_id, p.product_name, ROUND(SUM(o.quantity * p.price)::numeric,2) AS total_revenue
FROM public.orders o
JOIN public.products p
ON o.product_id = p.product_id
GROUP BY p.product_id,p.product_name
ORDER BY total_revenue DESC
LIMIT 10;