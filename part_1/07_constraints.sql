

-- NOT NULL, UNIQUE, DEFAULT, CHECK

DROP TABLE IF EXISTS basics.account;

CREATE TABLE basics.account(
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT true,
    age INTEGER CHECK (age >= 18),
    created_at TIMESTAMP DEFAULT NOW()
);

-- INSERT INTO basics.account (full_name, email, age)
-- VALUES
--     ('taiwo oladosu', 'tboyzz66@gmail.com', 30),
--     ('idowu philip', 'idowers@gmail.com', 40);


-- SELECT * FROM basics.account;

