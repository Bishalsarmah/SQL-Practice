-- Question 41
-- Find the number of orders placed by each customer.
SELECT c.customer_id, COUNT(o.order_id) AS Total_orders
FROM public.customers c
JOIN public.orders o
ON c.customer_id = o.customer_id 
GROUP BY c.customer_id;