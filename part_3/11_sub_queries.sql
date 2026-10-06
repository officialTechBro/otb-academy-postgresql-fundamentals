

-- running one query inside another query
-- psql run the inner query first then the outer query


 -- e.g. Which posts are performing better than average

 SELECT title, status, views FROM posts
 WHERE views > (
    SELECT AVG(views) FROM posts
 )
 ORDER BY views DESC;