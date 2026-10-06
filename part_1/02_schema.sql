
-- db -> schema -> table -> row
-- if not exist is going to prevent an error if the scema is already created
CREATE SCHEMA IF NOT EXISTS basics;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- query
SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;


