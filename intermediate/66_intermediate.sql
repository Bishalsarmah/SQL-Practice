-- Question 56
-- Find the average spending of non-loyalty members.

SELECT c.loyalty_member, ROUND(AVG(o.quantity * p.price)::numeric,2)
FROM public.orders o
JOIN public.customers p
ON o.customer_id = c.customer_id
JOIN public.products p 
ON o.product_id = p.product_id
WHERE loyalty_member ='No'
GROUP BY c.loyalty_member