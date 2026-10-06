-- Question 54
-- Find the payment method that generated the highest revenue.
SELECT o.payment_method, ROUND(SUM(o.quantity * p.price)::numeric,2) AS total_revenue
FROM public.orders o
JOIN public.products p
ON o.product_id = p.product_id
GROUP BY o.payment_method
ORDER BY total_revenue DESC
LIMIT 1;