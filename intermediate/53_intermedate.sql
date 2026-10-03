-- Question 43
-- Find the total amount spent by each customer.
--
-- Formula:
-- quantity * product price

SELECT 
o.customer_id,
SUM(o.quality * p.price)
FROM public.orders o
JOIN public.customers c
ON o.customer_id = c.customer_id
JOIN public.products p
ON o.product_id = p.product_id 
GROUP BY o.customer_id;