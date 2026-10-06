

-- LIMIT -> how many rows you want to return
-- OFFSET -> controls how many rows we want to skip

-- SELECT name, price FROM products
-- ORDER BY price ASC
-- LIMIT 5

-- SELECT name, price FROM products
-- ORDER BY name ASC
-- LIMIT 5 OFFSET 0


SELECT name, price FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 5