-- 1) Insira 5 usuários
INSERT INTO users 
(first_name, last_name, email, password_hash, salary)
VALUES
('José', 'da Silva', 'jose@gmail.com', '123asd456', ROUND(RAND() * 10000, 2)),
('Marta', 'Oliveira', 'martaoliveira@gmail.com', '123asd789', ROUND(RAND() * 10000, 2)),
('Cindy', 'Costa', 'cindy@gmail.com', '123asd123', ROUND(RAND() * 10000, 2)),
('Moacir', 'Alberto', 'moacir@gmail.com', '456asd456', ROUND(RAND() * 10000, 2)),
('Leandro', 'Carvalho', 'leandro@gmail.com', '456asd789', ROUND(RAND() * 10000, 2));

-- 2) Insira 5 perfís para os usuários inseridos
INSERT IGNORE INTO profiles 
(bio, description, user_id)
SELECT CONCAT('Bio de ', first_name), CONCAT('Description de ', first_name), id
FROM users;

-- 3) Insira permissões (roles) para os usuários inseridos
INSERT INTO users_roles (user_id, role_id)
SELECT 
id, 
(SELECT id FROM roles ORDER BY rand() LIMIT 1) AS qualquer 
FROM users
ORDER BY id DESC 
LIMIT 5;

-- 4) Selecione os últimos 5 usuários por ordem decrescente
SELECT * FROM users u
ORDER BY id DESC
LIMIT 5;

-- 5) Atualize o último usuário inserido
UPDATE users SET first_name = 'Joana', last_name = 'Guimarães'
WHERE id 
ORDER BY id DESC
LIMIT 1;

-- 6) Remova uma permissão de algum usuário
DELETE FROM users_roles
WHERE user_id = 119 AND role_id = 2;

-- 7) Remova um usuário que tem a permissão "PUT"
DELETE u
FROM users u
INNER JOIN users_roles ur ON u.id = ur.user_id 
INNER JOIN roles r ON ur.role_id = r.id
WHERE r.name  = 'PUT' AND u.id = 119
;

-- 8) Selecione usuários com perfís e permissões (obrigatório)
SELECT
u.first_name, u.last_name, u.email, u.salary,
p.bio, p.description,
r.name AS role
FROM users AS u
INNER JOIN profiles AS p ON u.id = p.user_id 
INNER JOIN users_roles AS ur ON u.id = ur.user_id
INNER JOIN roles AS r ON ur.role_id = r.id 
;

-- 9) Selecione usuários com perfís e permissões (opcional)
SELECT
u.first_name, u.last_name, u.email, u.salary,
p.bio, p.description,
r.name AS role
FROM users AS u
LEFT JOIN profiles AS p ON u.id = p.user_id 
LEFT JOIN users_roles AS ur ON u.id = ur.user_id
LEFT JOIN roles AS r ON ur.role_id = r.id 
;

-- 10) Selecione usuários com perfís e permissões ordenando por salário
SELECT
u.first_name, u.last_name, u.email, u.salary,
p.bio, p.description,
r.name AS role
FROM users AS u
INNER JOIN profiles AS p ON u.id = p.user_id 
INNER JOIN users_roles AS ur ON u.id = ur.user_id
INNER JOIN roles AS r ON ur.role_id = r.id 
ORDER BY u.salary DESC 
;