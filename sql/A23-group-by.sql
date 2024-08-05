-- Group By - Agrupa valores
SELECT first_name, COUNT(id) AS total FROM users
GROUP BY first_name 
ORDER BY total DESC;

SELECT u.first_name, COUNT(u.id) AS total FROM users AS u 
LEFT JOIN profiles AS p 
ON p.user_id = u.id 
WHERE u.ID IN (31, 33, 66, 109)
GROUP BY first_name 
ORDER BY total DESC
LIMIT 5;