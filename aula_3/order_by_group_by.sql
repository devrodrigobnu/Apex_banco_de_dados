-- database: c:\Users\ALUNO\Desktop\rl_logica\Aula\Apex_ensino\Apex_banco_de_dados\aula_3\mydatabase.db

CREATE TABLE IF NOT EXISTS  Programadores (
    id INTEGER PRIMARY KEY,
    nome TEXT (40),
    idade INTEGER,
    email TEXT (40)

);


SELECT * FROM Programadores;


INSERT INTO Programadores
(nome, idade, email)
VALUES ('test', 50, 'email@gmail.com');


-- REVISÃO: 
-- CREATE, DROP, DELETE, INSERT, WHERE, LIKE
-- SELECT, AND, COUNT, UPDATE, MAX, MIN, AVG



-- DELETAR TABELA TODA 
DROP TABLE Programadores;

-- Inserir valores e filtrar valores
INSERT INTO Programadores (nome, idade, email)
VALUES ('Eliot', 25, 'mr_robot@hacker.tor');

INSERT INTO Programadores (nome, idade, email)
VALUES ('Darlene', 32, 'darlene@hacker.tor');

INSERT INTO Programadores (nome, idade, email)
VALUES ('Tyrell Wellic', 45, 'tyrell@hacker.tor');

INSERT INTO Programadores (nome, idade, email)
VALUES ('Angela', 18, 'angela@hacker.tor');

INSERT INTO Programadores (nome, idade, email)
VALUES ('Rodrigo', 32, 'rodrigo@hacker.tor');

INSERT INTO Programadores (nome, idade, email)
VALUES ('Felipe', 32, 'felipe@hacker.tor');

INSERT INTO Programadores (nome, idade, email)
VALUES ('Taynan', 25, 'taynan@hacker.tor');

INSERT INTO Programadores (nome, idade, email)
VALUES ('Rudolfo', 31, 'rudolfo@hacker.tor');

INSERT INTO Programadores (nome, idade, email)
VALUES ('Murilo', 36, 'murilo@hacker.tor');

INSERT INTO Programadores (nome, idade, email)
VALUES ('Sheila', 51, 'sheila@hacker.tor');


-- Atualizar dados
UPDATE Programadores
SET nome = 'Bruno', idade = 60, email = 'bruno@hacker.tor'
WHERE nome = 'Eliot'
AND id = 1;

-- Selecionar apenas onde o nome é Bruno
SELECT nome, idade, email
FROM Programadores
WHERE nome = 'Bruno';

-- Adicionar uma nova coluna 
ALTER TABLE Programadores
ADD COLUMN linguagem_de_programacao TEXT(40);

-- Inserir as linguagens de programação manualmente para
-- cada linha da tabela

UPDATE Programadores 
SET linguagem_de_programacao = 'Perl'
WHERE id = 1;


-- Buscar os valores min e max, de colunas
SELECT MAX(id) AS id_maior,
MIN(idade) AS idade_menor
FROM Programadores;

-- Fazer média de idade selecionando coluna idade e adicionando media_idade
SELECT ROUND(AVG(idade), 2) AS media_idade
FROM Programadores;

-- Buscar palavras nos baseando em um texto aleatório
SELECT * FROM Programadores
WHERE nome LIKE 'R%'; -- Letra 'R' no inicio

SELECT * FROM Programadores
WHERE nome LIKE '%t'; -- Letra 'T' no final

SELECT * FROM Programadores
WHERE nome LIKE '%ol%'; -- Contem 'ol' no meio da string



-- ORDER BY = ordenar por idade decrescente (DESC) ou ascendente (ASC);
SELECT * FROM Programadores
ORDER BY idade DESC;


-- ORDER BY = ordenar por nome decrescente (DESC) ou ascendente (ASC);
SELECT * FROM Programadores
ORDER BY nome ASC;

-- Exercicio
-- Ordene a tabela Programadores
-- por todas as colunas, usando tanto DESC e ASC

-- NOME
SELECT nome FROM Programadores
ORDER BY nome DESC;
SELECT nome FROM Programadores
ORDER BY nome ASC;

-- IDADE
SELECT idade FROM Programadores
ORDER BY idade DESC;
SELECT idade FROM Programadores
ORDER BY idade ASC;

-- ID
SELECT id FROM Programadores
ORDER BY id DESC;
SELECT id FROM Programadores
ORDER BY id ASC;

-- EMAIL
SELECT email FROM Programadores
ORDER BY email DESC;
SELECT email FROM Programadores
ORDER BY email ASC;

-- linguagem_de_programacao
SELECT linguagem_de_programacao FROM Programadores
ORDER BY linguagem_de_programacao DESC;
SELECT linguagem_de_programacao FROM Programadores
ORDER BY linguagem_de_programacao ASC;



-- GROUP BY = agrupe por
SELECT *, COUNT(idade) AS quantidade_idade 
FROM Programadores
WHERE idade > 18
GROUP by idade;

SELECT COUNT(linguagem_de_programacao) AS total_python
FROM Programadores
WHERE linguagem_de_programacao = 'Python' -- Irá mostrar quantas vezes aparece Python
GROUP BY linguagem_de_programacao; 


--  |--##-- EX: --##--|

-- Criar a coluna salario_dev na tabela Programadores e inserir salários diferentes
-- para todos as linhas. Em seguida, selecionar os dados ordenando por id e 
-- Mostrando a média da coluna salario_dev
ALTER TABLE Programadores
ADD COLUMN salario_dev INTEGER;

UPDATE Programadores
SET salario_dev = 3000.00
WHERE id = 1;
UPDATE Programadores
SET salario_dev = 3200.00
WHERE id = 2;
UPDATE Programadores
SET salario_dev = 3600.00
WHERE id = 3;
UPDATE Programadores
SET salario_dev = 3800.00
WHERE id = 4;
UPDATE Programadores
SET salario_dev = 4000.00
WHERE id = 5;
UPDATE Programadores
SET salario_dev = 4200.00
WHERE id = 6;
UPDATE Programadores
SET salario_dev = 4400.00
WHERE id = 7;
UPDATE Programadores
SET salario_dev = 4600.00
WHERE id = 8;
UPDATE Programadores
SET salario_dev = 4800.00
WHERE id = 9;
UPDATE Programadores
SET salario_dev = 5000.00
WHERE id = 10;
UPDATE Programadores
SET salario_dev = 5200.00
WHERE id = 11;

SELECT * FROM Programadores
ORDER BY id;

SELECT AVG(salario_dev) AS media_salario_dev
FROM Programadores;



-- Criar mais 5 colunas em uma das tabelas e inserir os dados manualmente com update e SET
ALTER TABLE Programadores
ADD COLUMN nivel_funcionario TEXT(20);

ALTER TABLE Programadores
ADD COLUMN tempo_empresa INTEGER;

ALTER TABLE Programadores
ADD COLUMN email_secundario TEXT(20);

ALTER TABLE Programadores
ADD COLUMN telefone INTEGER;

-------------------------------------------------

UPDATE Programadores
SET nivel_funcionario = 'Dev. Junior'
WHERE id = 1;

UPDATE Programadores
SET tempo_empresa = 1
WHERE id = 1;

UPDATE Programadores 
SET email_secundario = 'digiteseuemail@gmail.com'
WHERE id = 1;

UPDATE Programadores
SET telefone = 47999670173
WHERE id = 1;



-- Selecionar a maior idade, e o menor id da tabela Programadores

SELECT MAX(idade) AS maior_idade, MIN(id) as menor_id
FROM Programadores;
 
-- Selecionar todas as colunas da tabela Programadores e 
-- ordenar pelo nome em ordem alfabética

SELECT * FROM Programadores
ORDER BY nome ASC;

-- Selecionar o nome e a idade da tabela Programadores, agrupando pela idade 
-- mostrando a mesma como total_idade_grup apenas onde a idade é maior ou igual a 18

SELECT nome, idade AS total_idade_group
FROM Programadores
WHERE idade >= 18
GROUP BY idade;

-- Selecionar todas as colunas da tabela Programadores e ordenando por id em ordem decrescente

SELECT * FROM Programadores
ORDER BY id ASC;

-- Criar uma tabela nova, inserir 20 linhas e 8 colunas na tabela
-- Refazer todos os exercícios desse arquivo com a tabela criada