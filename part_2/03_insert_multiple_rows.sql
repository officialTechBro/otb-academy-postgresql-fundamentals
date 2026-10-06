

INSERT INTO products(name, category, price, stock, sku, description) 
VALUES
    ('Baby Carrier', 'utility', '1900.00', 230, 'UTL-KEY-002', 'Carrier for babies'),
    ('Wooden Work Station', 'Furnitire', '3000.00', 10, 'FNT-KEY-112', 'Portable wooden workstation'),
    ('Wireles Airpods', 'electronics', '400.00', 300, 'ELEC-KEY-003', 'White wireless airpods');

SELECT name, category, price, stock, sku FROM products
WHERE sku IN ('UTL-KEY-002','FNT-KEY-112', 'ELEC-KEY-003');