-- Question 58
-- Find the total spending of customers grouped by gender.

SELECT c.gender, ROUND(SUM(o.quantity * p.price)::numeric,2) AS total_revenue
FROM public.orders o
JOIN public.customers c
ON o.customer_id = c.customer_id
JOIN public.products p
ON o.product_id = p.product_id
GROUP BY c.gender
