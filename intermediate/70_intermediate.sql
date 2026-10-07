-- Question 60
-- Find the city that generated the highest total revenue.
SELECT c.city, ROUND(SUM(o.quantity * p.price)::numeric,2) AS total_revenue
FROM public.orders o
JOIN public.customers c
ON c.customer_id = o.customer_id
JOIN public.products p
ON o.product_id = p.product_id
GROUP BY c.city
ORDER BY total_revenue DESC
LIMIT 1

