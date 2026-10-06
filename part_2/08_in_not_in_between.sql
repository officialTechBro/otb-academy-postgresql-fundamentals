-- IN -> value must match one item from the list
-- NOT IN -> value must not match one item from the list
-- BETWEEN -> value must be inside a range


-- SELECT name, category, price FROM products
-- WHERE category IN ('electronics', 'furniture')


-- SELECT name, category, price FROM products
-- WHERE category NOT IN ('electronics', 'furniture')

-- SELECT name, price FROM products 
-- WHERE price BETWEEN 100 AND 2000;

SELECT name, price, category, stock FROM products
WHERE category IN ('furniture', 'stationery')
AND price BETWEEN 10 AND 300000;