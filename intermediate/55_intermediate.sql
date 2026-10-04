-- Question 45
-- Find the top 10 customers based on total quantity ordered.
SELECT o.customer_id, SUM(o.quantity) AS total_quantity
FROM public.orders o
JOIN public.customers c
ON o.customer_id = c.customer_id
GROUP BY o.customer_id 
ORDER BY total_quantity DESC
LIMIT 10;