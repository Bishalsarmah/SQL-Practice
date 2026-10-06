-- Question 55
-- Find the average spending of loyalty members.

SELECT c.loyalty_member, ROUND(AVG(o.quantity * p.price)::numeric,2)
FROM pulic.orders o
JOIN public.customers c
ON o.customer_id = c.customer_id
JOIN public.products p
ON o.product_id = p.product_id
GROUP BY c.loyalty_member

