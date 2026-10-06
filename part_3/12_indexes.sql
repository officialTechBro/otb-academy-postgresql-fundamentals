

-- indexes helps postgres find rows quickly

-- SELECT -> 

SELECT id, title, status, views, user_id FROM posts;

-- /posts?status=published

SELECT id, title, status FROM posts
WHERE status = 'published';

CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status);

------------------------------------------------


SELECT title, status, views FROM posts
WHERE status = 'published'
ORDER BY views DESC

-- composite index
CREATE INDEX IF NOT EXISTS idx_posts_status_views
ON post(status, views DESC)

-----------------------------------------------------------------------

-- /user/:id/posts

SELECT title, status, views FROM posts
WHERE user_id = (
    SELECT id FROM users
    WHERE name = 'Rahul'
)

CREATE INDEX IF NOT EXISTS idx_posts_user_id
ON post(user_id)