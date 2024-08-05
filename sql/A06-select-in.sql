-- IN seleciona elementos entre os valores enviados!
SELECT * FROM users
WHERE id IN (30,35,40,45,50,55,60)
AND first_name IN ('Karina', 'Baker', 'Xavier');