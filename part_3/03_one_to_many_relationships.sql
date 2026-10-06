
-- one to many relationship
-- one parent rows can have many child rows
-- meaning -> one user can have multple posts but one post will always belong to one user

-- user -> parent table
-- posts -> child table
-- posts.user_id === user.id

-- users.id is the original user id
-- post.user_id stores that original user id inside the posts table


-- e,g show all post with their authors

SELECT
    users.name AS author_name,
    posts.title AS post_title,
    posts.status
FROM users
INNER JOIN posts
    ON users.id = posts.user_id
ORDER BY users.name, posts.title;