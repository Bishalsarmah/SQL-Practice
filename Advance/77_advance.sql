-- Find all products whose price is greater than the
-- average price of products in their category.

SELECT p.product_id, p.product_name, p.price, p.category
FROM products p
WHERE p.price > (SELECT AVG(p2.price)
FROM products p2
WHERE p2.category = p.category
)