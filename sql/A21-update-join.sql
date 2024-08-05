-- Atualiza registro com JOINs

SELECT u.first_name, p.* FROM users AS u
JOIN profiles p 
ON p.user_id = u.id
WHERE u.first_name = 'Keelie'
;


UPDATE users AS u
JOIN profiles p 
ON p.user_id = u.id
SET p.bio = CONCAT(p.bio, ' atualizado')
WHERE u.first_name = 'Keelie'
;