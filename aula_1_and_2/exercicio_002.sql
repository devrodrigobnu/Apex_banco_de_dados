-- database: c:\Users\rodri\OneDrive\Desktop\apex\banco_de_dados\aula_1_and_2\mydatabase.db
-- Use the ▷ button in the top right corner to run the entire file.

-- Exercício 1: Crie uma tabela chamada "clientes" com os campos "id" 
-- (chave primária), "nome", "idade" e "email".

CREATE TABLE IF NOT EXISTS 
    clientes (
        id INTEGER PRIMARY KEY,
        nome TEXT (20),
        email TEXT (20),
        idade INTENGER

    ) ;

-- Exercício 2: Insira três registros na tabela "clientes".

INSERT INTO clientes (nome, idade, email)
VALUES ('Rodrigo Joel', 32, 'rodrigo2611l@gmail.com');

INSERT INTO clientes (nome, idade, email)
VALUES ('Margarete', 60, 'margarete@gmail.com');

INSERT INTO clientes (nome, idade, email)
VALUES ('Edson', 65, 'edson@gmail.com');

INSERT INTO clientes (nome, idade, email)
VALUES ('Taynan', 25, 'taynan@gmail.com');

INSERT INTO clientes (nome, idade, email)
VALUES ('Daniel', 36, 'daniel@gmail.com');

-- Exercício 3: Atualize a idade do cliente com "id" igual a 1 para uma nova idade.

UPDATE clientes
SET idade = 33
where id = 1;

-- Exercício 4: Exclua o cliente com "id" igual a 2 da tabela "clientes"

DELETE FROM clientes
WHERE id = 2;





