-- Question 59
-- Find the average age of customers who have placed orders.
SELECT ROUND(AVG(c.age)::numeric,1) AS avg_age_of_customers
FROM public.customers c
JOIN public.orders o
ON o.customer_id = c.customer_id