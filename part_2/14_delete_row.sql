

-- INSERT INTO products (name, category, price, stock, sku, description)
-- VALUES ('temp product to be deleted', 'electronics', 345.50, 45, 'ELEC-TEMP-003', 'temp product');


SELECT name, category, sku FROM products
WHERE sku = 'ELEC-TEMP-003';

DELETE FROM products
WHERE sku = 'ELEC-TEMP-003';

SELECT name, category, sku FROM products
WHERE sku = 'ELEC-TEMP-003';
