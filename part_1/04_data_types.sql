

DROP TABLE IF EXISTS basics.products_basic;

CREATE TABLE basics.products_basic (
    id SERIAL PRIMARY KEY,

    -- varchar -> max length of 100 chars
    name VARCHAR(100) NOT NULL,

    description TEXT,
    
    stock INTEGER DEFAULT 0,

    -- bigint -> store larger whole number than integer
    total_views BIGINT DEFAULT 0,

    -- numeric -> exact decimal value
    -- 10 means total digits
    -- 2 means digit after the decimal point e.g 9999999.99
    price NUMERIC(10,2),

    is_active BOOLEAN DEFAULT true
);

-- queris
INSERT INTO basics.products_basic (name, description, stock, total_views, price, is_active)
VALUES
    ('product 1', 'product desc', 100, 1200, 244.55, true),
    ('product 2', 'product desc 2', 510, 17500, 999.55, false);

SELECT * FROM basics.products_basic;

SELECT id, name, price, is_active 
FROM basics.products_basic
WHERE is_active = true