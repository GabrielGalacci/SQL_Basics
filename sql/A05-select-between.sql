-- Between seleciona um range
SELECT * FROM users
WHERE 
created_at BETWEEN '2020-09-27 00:00:00'
AND '2021-02-20 23:59:59'
AND id BETWEEN 30 AND 100;