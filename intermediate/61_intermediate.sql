-- Question 51
-- Find the number of orders for each payment method.

SELECT payment_method, COUNT(order_id) AS total_orders
FROM public.orders
GROUP BY payment_method
ORDER BY total_orders DESC