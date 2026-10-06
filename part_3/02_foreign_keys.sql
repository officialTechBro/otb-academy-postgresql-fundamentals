

-- foreign keys are col that points to the primary key of another table

-- users.id - parent key
-- posts.user_id - foreign key
-- means every post u will create must belong to an existing users

SELECT id, name FROM users;

SELECT id, user_id, title FROM posts;