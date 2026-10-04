-- Question 44
-- Find the top 10 customers based on total spending.

SELECT o.customer_id, ROUND(SUM(o.quantity * p.price)::numeric,2) AS Total_Spending
FROM public.orders o
JOIN public.customers c
ON o.customer_id = c.customer_id
JOIN public.products p
ON o.product_id = p.product_id
GROUP BY o.customer_id 
ORDER BY Total_Spending
LIMIT 10;