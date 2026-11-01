-- Question 6
-- Find all products whose price is greater than the
-- average price of all products.

SELECT product_id, product_name, price, category, ROUND(price - (SELECT AVG(price) FROM products)::numeric,2) AS diff
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
)
ORDER BY price DESC;