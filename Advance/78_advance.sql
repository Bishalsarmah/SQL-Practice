-- Question 8
-- Find the second-highest product pricE
SELECT MAX(price) AS second_max
FROM products
WHERE price < (
    SELECT MAX(price)
    FROM products
)