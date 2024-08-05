-- LIMIT delimita a quantidade de valores
-- OFFSET desloca o cursor que exibe os resultados
SELECT id, first_name, email AS uemail 
FROM users
WHERE id BETWEEN 50 AND 100
ORDER BY id ASC 
LIMIT 9,3;