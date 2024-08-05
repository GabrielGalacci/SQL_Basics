-- Seleciona a base de dados
USE DB_MYSQL;
-- Mostra as tabelas da base de dados
SHOW tables;
-- Descreve as colunas das tabelas
describe users;
-- Inserir registro na base de dados
INSERT INTO users 
(first_name, last_name, email, password_hash) VALUES
("Helena", "A", "helena@email.com", "c_hash"),
("Joana", "B", "joana@email.com", "d_hash"),
("Rosana", "C", "rosana@email.com", "e_hash");
