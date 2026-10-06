

-- group by creates groups of rows
-- WHERE -> filters normal rows before grouping
-- HAVING -> filter groups after grouping


-- find authors who written atleast 2 post

SELECT 
    u.name AS author_name,
    COUNT(p.id) AS total_post,
    SUM(p.views) AS total_views
FROM users AS u
LEFT JOIN posts AS p 
    ON u.id = p.user_id
GROUP BY u.id
HAVING COUNT(p.id) >= 2 
ORDER BY total_post DESC; 