-- database: c:\Users\rodri\OneDrive\Desktop\apex\banco_de_dados\aula_3\mydatabase.db


-- Criar uma tabela nova, inserir 20 linhas e 8 colunas na tabela
-- Refazer todos os exercícios desse arquivo com a tabela criada

CREATE TABLE IF NOT EXISTS  tabela_1 (
    id INTEGER PRIMARY KEY,
    nome TEXT (20),
    idade INTEGER,
    email TEXT (20),
    sobrenome TEXT (20),
    apelido TEXT (20),
    cidade TEXT (20),
    estado TEXT (2)

) ;

INSERT INTO tabela_1
(nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('rodrigo', 32, 'rodrigo2611l@gmail.com', 'luchtenberg', 'rodriguera', 'blumenau', 'sc');


