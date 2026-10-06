

-- returning usually returns bck the rows immediately afeter insert, update amd delete

-- INSERT into products (name, category, price, stock, sku, description)
-- VALUES ('webcam camera', 'electronics', 456.75, 56, 'ELEC-WEB-004', 'webcam camera description')
-- RETURNING id, name, category, price, stock, created_at;

-- UPDATE products
-- SET stock = stock + 11
-- WHERE sku = 'ELEC-WEB-004'
-- RETURNING id, name, stock;


DELETE FROM products WHERE sku = 'ELEC-WEB-004'
RETURNING id, name, sku;

SELECT name, sku FROM products
WHERE sku = 'ELEC-WEB-004';