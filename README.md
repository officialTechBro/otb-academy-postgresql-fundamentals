# PostgreSQL Fundamentals

A hands-on PostgreSQL course made of small, numbered SQL scripts. Each file covers one concept and is meant to be read and run in order.

## Structure

### Part 1 – Foundations
| File | Topic |
| --- | --- |
| `01_database.sql` | Creating a database |
| `02_schema.sql` | Schemas |
| `03_table.sql` | Tables |
| `04_data_types.sql` | Common data types |
| `05_other_data_types.sql` | Other data types |
| `06_null_empty_string_zero.sql` | `NULL` vs empty string vs zero |
| `07_constraints.sql` | Constraints |
| `08_primary_keys.sql` | Primary keys |

### Part 2 – Core SQL (CRUD)
Starts with `01_sql_concepts_base_file.sql`, which creates and seeds a `products` table used by the rest of the part.

- `INSERT`: single and multiple rows
- `SELECT`: specific columns vs `SELECT *`
- Filtering: `WHERE`, `AND` / `OR` / `NOT`, `LIKE` / `ILIKE`, `IN` / `NOT IN` / `BETWEEN`, `IS NULL` / `IS NOT NULL`
- `ORDER BY`, `LIMIT` / `OFFSET` pagination
- `UPDATE`: single and multiple rows
- `DELETE`
- `RETURNING`

### Part 3 – Relationships and Beyond
Starts with `01_reset_and_seed_relationship.sql`, which resets and seeds `users`, `posts`, `comments`, `tags` and `post_tags`.

- Foreign keys
- One-to-many and many-to-many relationships
- `INNER JOIN` and `LEFT JOIN`
- Table aliases
- Aggregate functions, `GROUP BY`, `COUNT(DISTINCT ...)`
- Subqueries
- Indexes
- Transactions

## Getting Started

1. Install PostgreSQL and make sure the server is running.
2. Open the scripts in `psql`, pgAdmin, or your editor's SQL client.
3. Run the files in numeric order within each part.

```bash
psql -U postgres -f part_1/01_database.sql
```

## Notes

- Several scripts use `DROP DATABASE` / `DROP TABLE IF EXISTS` to start from a clean state. This is for learning only. Never do this in production.
- Parts 2 and 3 use `gen_random_uuid()`, so they enable the `pgcrypto` extension.
- Part 1 creates a database named `postgresql_part1`; connect to it before running the later Part 1 scripts.
