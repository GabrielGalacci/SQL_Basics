-- UPDATE atualiza registros da tabela
UPDATE users SET 
first_name = 'José', 
last_name = 'Souza'
WHERE id = 56;

-- use SELECT para garantir que está atualizando os valores corretos!!!
SELECT * FROM users WHERE id BETWEEN 56 AND 60;

