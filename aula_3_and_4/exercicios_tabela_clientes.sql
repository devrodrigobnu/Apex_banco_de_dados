-- database: :\Users\ALUNO\Desktop\rl_logica\Aula\Apex_ensino\Apex_banco_de_dados\aula_3\mydatabase_alunos.db

-- 1 - Crie uma tabela chamada "clientes" com os campos: 
-- id (inteiro), nome (texto) e email (texto).

CREATE TABLE IF NOT EXISTS clientes (
    id INTEGER PRIMARY KEY,
    nome TEXT (20),
    email TEXT (20)
) ;

-- 2 - Insira 5 registros na tabela "clientes".
INSERT INTO clientes (nome, email)
VALUES ('Rodrigo', 'rodrigo2611l@gmail.com');

INSERT INTO clientes (nome, email)
VALUES ('Felipe', 'felipe@gmail.com');

INSERT INTO clientes (nome, email)
VALUES ('Taynan', 'taynan@gmail.com');

INSERT INTO clientes (nome, email)
VALUES ('Edson', 'edson@gmail.com');

INSERT INTO clientes (nome, email)
VALUES ('Margarete', 'margarete@gmail.com');

-- 3 - Escreva uma consulta para selecionar todos os 
-- clientes da tabela.
SELECT * FROM clientes;

-- 4 - Escreva uma consulta para selecionar o cliente com o id igual a 3.
SELECT * FROM clientes
WHERE id = 3;

-- 5 -Escreva uma consulta para selecionar o nome e o email de todos os clientes.

SELECT nome, email FROM clientes;

-- 6 Escreva uma consulta para atualizar o email do cliente 
-- com id igual a 2.

UPDATE clientes
SET email = 'teste@gmail.com'
WHERE id = 2;

-- 7 - Escreva uma consulta para excluir o cliente com o id igual a 4.
DELETE FROM clientes
WHERE id = 4;

-- 8 - Crie uma tabela chamada "produtos" com os campos: id (inteiro), nome (texto) e preço (real).
CREATE TABLE IF NOT EXISTS produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT (20),
    preço REAL 
);

-- 9 - Insira 10 registros na tabela "produtos".
INSERT INTO produtos (nome, preço)
VALUES ('T-shirt', 25.5);

INSERT INTO produtos (nome, preço)
VALUES ('Bermuda', 30);

INSERT INTO produtos (nome, preço)
VALUES ('Jaqueta', 50);

INSERT INTO produtos (nome, preço)
VALUES ('Calça', 90);

INSERT INTO produtos (nome, preço)
VALUES ('Meia', 20);

INSERT INTO produtos (nome, preço)
VALUES ('Cueca', 19);

INSERT INTO produtos (nome, preço)
VALUES ('Camiseta Manga Longa', 80);

INSERT INTO produtos (nome, preço)
VALUES ('Calcinha', 25);

INSERT INTO produtos (nome, preço)
VALUES ('Tenis', 120);

INSERT INTO produtos (nome, preço)
VALUES ('Roupão', 250);

-- 10 - Escreva uma consulta para selecionar todos os produtos com preço maior que 50.00.

SELECT * FROM produtos
WHERE preço > 50;

-- 11 - Escreva uma consulta para selecionar o produto mais caro da tabela.

SELECT nome, preço
FROM produtos
WHERE preço = (SELECT MAX(preço) FROM produtos);

-- 12 - Escreva uma consulta para calcular o preço médio dos produtos.

SELECT AVG(preço) AS preço_medio FROM produtos;

-- 13 - Crie uma tabela chamada "pedidos" com os campos: 
-- id (inteiro), id_cliente (inteiro), id_produto (inteiro) e data (texto).

CREATE TABLE IF NOT EXISTS pedidos (
    id INTEGER PRIMARY KEY,
    id_clientes INTEGER,
    id_produto INTEGER,
    data TEXT(10)
);

-- 14 - Insira 8 registros na tabela "pedidos".

