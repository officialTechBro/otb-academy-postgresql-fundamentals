

DROP TABLE IF EXISTS basic.students;

CREATE TABLE basics.students (
    -- serial -> create an auto incrementing integer
    -- primary key -> means this column uniquely identifies each row
    id SERIAL PRIMARY KEY,

    -- text -> string data
    -- not null -> means the col is required
    -- postgres is going to reject if the value is not present
    name TEXT NOT NULL,

    -- unique -> means no 2 student is going to have same email
    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age >= 18),

    -- timestamp -> stores data and time format
    -- default -> if you dont give any value, it will take by default
    created_at TIMESTAMP DEFAULT NOW()

);


-- insert some data

INSERT INTO basics.students (name, email, age)
VALUES
    ('taiwo', 'taiwo@mail.com', 34),
    ('kehinde', 'kehinde@mail.com', 35),
    ('idowu', 'idowu@mail.com', 19);


-- select
SELECT * FROM basics.students