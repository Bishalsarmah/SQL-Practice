-- Question 52
-- Find the total quantity ordered using each payment method.

SELECT payment_method, SUM(quantity) AS total_quantity
FROM public.orders
GROUP BY payment_method
ORDER BY total_quantity DESC
