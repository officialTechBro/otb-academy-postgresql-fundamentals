


-- AND -> every consitions must be true
-- OR -> at least one condition must be true
-- NOT -> reverse/exclude a condition

-- e.g1 products where it is electronics but price > 1000

-- SELECT name, category, price FROM products
-- WHERE category = 'electronics'
-- AND price < 1000;

-- e.g2 products where category is electronics or furniture

-- SELECT name, category, price FROM products
-- WHERE category = 'electronics' OR category = 'furniture';

-- e.g3 products where categories is not 'stationary'

SELECT name, category, price FROM products
WHERE NOT category = 'furniture';