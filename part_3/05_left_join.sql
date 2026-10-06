

-- left join keeps all row from the left table
-- if the right table has a matching data, progresql will includes that
-- if its dont have any matching data, it returns null

-- posts -> left table
-- comments -> right table

-- because not every posts is going to have a comments
-- some post will have 100 comments and some will have 0

SELECT
    posts.title AS post_title,
    comments.body AS comment_body
FROM posts
LEFT JOIN comments
    ON posts.id = comments.post_id
ORDER BY posts.title;
