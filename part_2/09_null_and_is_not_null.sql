

-- NULL -> missing/unknown value
-- you should not check null using = null
-- IS NULL
-- IS NOT NULL

-- SELECT name, description FROM products
-- WHERE description IS NULL;


-- SELECT name, description FROM products
-- WHERE description IS NOT NULL;

SELECT name, description, is_active FROM products
WHERE is_active = TRUE
AND description IS NULL;

