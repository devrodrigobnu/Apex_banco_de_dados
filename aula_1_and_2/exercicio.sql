-- database: c:\Users\rodri\OneDrive\Desktop\apex\banco_de_dados\aula_1_and_2\mydatabase.db
-- Use the ▷ button in the top right corner to run the entire file.


    -- Criar uma tabela chamada ​uzuarios:
    -- a.nome texto de 20 caracteres
    -- b.sobrenome  texto de 40 caracteres
    -- c.idade do tipo inteiro
CREATE TABLE IF NOT EXISTS
    uzuarios (
        id INTEGER PRIMARY KEY,
        nome TEXT (20),
        sobrenome TEXT (40),
        idade INTENGER
    );

-- Adicione uma coluna e-mail com suporte até 40 caracteres
ALTER TABLE uzuarios
ADD COLUMN email TEXT(40);

-- Exclua a coluna sobrenome
ALTER TABLE uzuarios
DROP COLUMN sobrenome;

-- Cadastre os seguintes dados:
-- Vanessa, 16, vanessa.rosa@gmail.com
-- Adailton, 22, adailton.mas@yahoo.com
-- Andressa, 36, andressa.simas@uol.com.br
-- Mayra, 24, mayra_antunes@gmail.com
-- Cristiane, 14, cris.maya@gmail.com
-- Carina, 27, carina.almeida@gmail.com
-- Clóvis, 29, clovis.simao@hotmail.com
-- Gabriela, 23, gabriela.bragantino@live.com
-- Cibele, 25, cibele_lins@uol.com.br

INSERT INTO uzuarios (nome, idade, email)
VALUES ('Vanessa', 16, 'vanessa.rosa@gmail.com');

INSERT INTO uzuarios (nome, idade, email)
VALUES ('Adailton', 22, 'adailton.mas@yahoo.com');

INSERT INTO uzuarios (nome, idade, email)
VALUES ('Andressa', 36, 'andressa.simas@uol.com.br');

INSERT INTO uzuarios (nome, idade, email)
VALUES ('Mayra', 24, 'mayra_antunes@gmail.com');

INSERT INTO uzuarios (nome, idade, email)
VALUES ('Cristiane', 14, 'cris.maya@gmail.com');

INSERT INTO uzuarios (nome, idade, email)
VALUES ('Carina', 27, 'carina.almeida@gmail.com');

INSERT INTO uzuarios (nome, idade, email)
VALUES ('Clóvis', 29, 'clovis.simao@hotmail.com');

INSERT INTO uzuarios (nome, idade, email)
VALUES ('Gabriela', 23, 'gabriela.bragantino@live.com');

INSERT INTO uzuarios (nome, idade, email)
VALUES ('Cibele', 25, 'cibele_lins@uol.com.br');

-- Exiba quantos registros existem na tabela

SELECT COUNT(*) AS contador
FROM uzuarios;

-- Exibir a quantidade de usuários com idade até 17 anos

SELECT COUNT(*) from uzuarios
where idade < 17;

-- Retornar a quantidade de usuários com o e-mail ​gmail
SELECT COUNT(*) AS email
FROM uzuarios;

-- Retornar o nome e a idade da pessoa mais velha
SELECT nome, idade 
FROM uzuarios
WHERE idade = (SELECT MAX(idade) FROM uzuarios);

-- Retornar os dados do usuário com idade igual a nulo

SELECT COUNT(*) as contador
FROM uzuarios
where idade is null;

-- Alterar para 27 todas as idades

UPDATE uzuarios
set idade = '27';

-- Deletar todos os usuários com idade inferior a 18 anos

DELETE FROM uzuarios
WHERE idade < 18;

-- Excluir todos os dados da tabela e reiniciar a contabilização
