-- ==========================================================
-- SECTION 1: ADVANCED JOINS
-- ==========================================================

-- Question 1
-- Find customers who have never placed an order.

SELECT * 
FROM public.customers c
LEFT JOIN public.orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;