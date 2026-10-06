-- like -> case sensitive pattern match
--Ilike -> case insensitive pattern match
-- % -> means any no of characters
-- exactly one char


-- SELECT name, price FROM products
-- WHERE name LIKE 'Wireless%';

-- SELECT * FROM products;

-- SELECT name, category FROM products
-- WHERE name ILIKE '%desk%';

SELECT name, category, description FROM products
WHERE name ILIKE '%chair%' 
OR description ILIKE '%chair%'