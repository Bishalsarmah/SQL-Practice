-- Question 9
-- Find the third-highest product price.

SELECT product_name, price, price_rank
FROM (SELECT product_name, 
    price, 
    DENSE_RANK() OVER(ORDER BY price DESC) AS price_rank
    FROM products
)
WHERE price_rank = 3