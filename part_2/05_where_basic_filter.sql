

-- /products?category=electronics

-- SELECT name, category, price FROM products
-- WHERE category = 'electronics';

-- SELECT * FROM products 
-- WHERE price > 100

SELECT name, is_active FROM products
WHERE is_active = FALSE;