-- database: c:\Users\rodri\OneDrive\Desktop\apex\banco_de_dados\aula_3_and_4\mydatabase.db


-- # Exercícios:

-- OBS: Se o exercício pedir por dados que ainda não existem, inserir os mesmos.
    -- Cada nota, corresponderá a uma matéria do aluno, portanto o alunos pode
    -- aparecer mais de um vez na tabela com notas distintas para cada matéria,
    -- no entando deve ter o id único com uma chave primária
    -- Se o exercício estiver muito difícil, pule e volte depois

-- Crie uma tabela chamada "Alunos" com as colunas id como inteiro e chave primária,
-- nome como texto, idade como inteiro, notas como double, matéria como texto.

CREATE TABLE IF NOT EXISTS alunos (
    id INTEGER PRIMARY KEY,
    nome TEXT (20),
    idade INTEGER,
    notas DOUBLE,
    materia TEXT (20)
);

-- Insira 20 linhas distintas na tabela alunos para cada linha, tente incluir diversidade nas notas e matérias.

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('rodrigo', 32, 8, 'biologia');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('felipe', 23, 7.5, 'matemática');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('adriana', 32, 6.9, 'física');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('pedro', 18, 7.1, 'português');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('maria', 44, 6.2, 'química');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('joao', 15, 9, 'artes');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('vitor', 18, 10, 'ingles');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('sabrina', 16, 7.5, 'geografia');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('luana', 20, 8.3, 'história');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('lucas', 37, 6, 'ed. fisica');

-- Selecione todos os registros da tabela "Alunos".

SELECT * FROM alunos;

-- Selecione apenas o nome e a idade dos alunos da tabela "Alunos".

SELECT nome, idade FROM alunos;  

-- Insira um novo aluno na tabela "Alunos" com nome "Ricardo" e idade 25, sem matéria e sem notas.

INSERT INTO alunos (nome, idade)
VALUES ('ricardo', 25);

-- Selecione todas as colunas onde a matéria está com valor null.

SELECT * FROM alunos
WHERE materia is null;

-- Atualize a idade do aluno com id 10 para 22 anos na tabela "Alunos".

UPDATE alunos
SET idade = 22
WHERE id = 10;

-- Selecione a maior idade presente na tabela "Alunos".

SELECT MAX(idade) AS maior_idade FROM alunos;

-- Selecione o menor valor da coluna "notas".

SELECT MIN(notas) AS menor_valor FROM alunos;

-- Ordene os alunos da tabela "Alunos" por nota em ordem decrescente.

SELECT * FROM alunos
ORDER BY notas DESC;

-- Calcule a média das notas dos alunos.

SELECT AVG(notas) AS media_notas FROM alunos;

-- Inserir mais 15 linhas com dados distintos, e modificar três linhas existentes em pelo menos duas colunas cada.
INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('João da Silva', 20, 8.5, 'Matemática');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Maria Santos', 22, 9.0, 'Português');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Pedro Oliveira', 19, 7.8, 'História');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Ana Pereira', 21, 6.5, 'Geografia');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Luiz Costa', 23, 8.0, 'Ciências');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Carla Almeida', 20, 7.2, 'Biologia');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Rafael Fernandes', 24, 6.8, 'Física');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Sofia Lima', 22, 9.5, 'Química');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Gabriel Ribeiro', 19, 7.9, 'Educação Física');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Laura Rodrigues', 21, 8.3, 'Artes');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Matheus Cardoso', 25, 6.5, 'Filosofia');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Isabela Gomes', 18, 9.1, 'Sociologia');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Lucas Barbosa', 23, 7.7, 'Inglês');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Júlia Moreira', 20, 8.8, 'Literatura');

INSERT INTO alunos (nome, idade, notas, materia)
VALUES ('Eduardo Souza', 22, 6.9, 'Espanhol');

-- Crie uma coluna escola e insira as escolas para os alunos usando update 
ALTER TABLE alunos
ADD COLUMN escolas TEXT (40);

UPDATE alunos
SET escolas = 'Escola Municipal Pedro Álvares Cabral'
WHERE id = 1;
UPDATE alunos
SET escolas = 'Escola Estadual Professora Maria da Silva'
WHERE id = 2;
UPDATE alunos
SET escolas = 'Colégio São Francisco de Assis'
WHERE id = 3;
UPDATE alunos
SET escolas = 'Escola Municipal João Goulart'
WHERE id = 4;
UPDATE alunos
SET escolas = 'Escola Estadual Professora Ana Maria'
WHERE id = 5;
UPDATE alunos
SET escolas = 'Colégio Dom Bosco'
WHERE id = 6;
UPDATE alunos
SET escolas = 'Escola Municipal Carlos Drummond de Andrade'
WHERE id = 7;
UPDATE alunos
SET escolas = 'Escola Estadual Professora Clara Nunes'
WHERE id = 8;
UPDATE alunos
SET escolas = 'Colégio Santa Catarina'
WHERE id = 9;
UPDATE alunos
SET escolas = 'Escola Municipal Monteiro Lobato'
WHERE id = 10;
UPDATE alunos
SET escolas = 'Escola Estadual Professor Antônio da Silva'
WHERE id = 11;
UPDATE alunos
SET escolas = 'Colégio Imaculada Conceição'
WHERE id = 12;
UPDATE alunos
SET escolas = 'Escola Municipal Machado de Assis'
WHERE id = 13;
UPDATE alunos
SET escolas = 'Escola Estadual Professora Mariana Souza'
WHERE id = 14;
UPDATE alunos
SET escolas = 'Colégio Nossa Senhora das Graças'
WHERE id = 15;
UPDATE alunos
SET escolas = 'Escola Municipal Vinicius de Moraes'
WHERE id = 16;
UPDATE alunos
SET escolas = 'Escola Estadual Professor Rui Barbosa'
WHERE id = 17;
UPDATE alunos
SET escolas = 'Colégio Bom Jesus'
WHERE id = 18;
UPDATE alunos
SET escolas = 'Escola Municipal Cecília Meireles'
WHERE id = 19;
UPDATE alunos
SET escolas = 'Escola Estadual Professor Luiz Gonzaga'
WHERE id = 20;
UPDATE alunos
SET escolas = 'Colégio Ressurreição'
WHERE id = 21;
UPDATE alunos
SET escolas = 'Escola Municipal Manuel Bandeira'
WHERE id = 22;
UPDATE alunos
SET escolas = 'Escola Estadual Professora Maria Clara'
WHERE id = 23;
UPDATE alunos
SET escolas = 'Colégio São Luiz'
WHERE id = 24;
UPDATE alunos
SET escolas = 'Escola Municipal Anita Garibaldi'
WHERE id = 25;
UPDATE alunos
SET escolas = 'Escola Estadual Professor Francisco Alves'
WHERE id = 26;

-- Selecione os alunos cujo nome começa com a letra "A" na tabela "Alunos".
SELECT * FROM alunos
WHERE nome LIKE 'a%';

-- Ordene os alunos da tabela "Alunos" por idade em ordem crescente.
SELECT * FROM alunos
ORDER BY idade ASC;

-- Selecione os alunos que têm idade entre 20 e 25 anos na tabela "Alunos".
SELECT * FROM alunos
WHERE idade BETWEEN 20 and 25;

-- Selecione os alunos que têm idade maior que 18 e que estudam na escola "Bom Jesus" na tabela "Alunos".
SELECT * FROM alunos
WHERE idade > 18 AND escolas = 'Colégio Bom Jesus';

-- Escreva uma consulta SQL que calcule a média de idade dos alunos para cada escola
SELECT escolas, AVG(idade) AS media_idade
FROM alunos
GROUP BY escolas;


-- Selecione os alunos que obtiveram uma nota maior ou igual a 7 na disciplina de "Matemática".

SELECT * FROM alunos
WHERE notas > 7 and materia = 'matemática';

-- Selecione os alunos que obtiveram uma nota menor que 10 na disciplina de "História".
SELECT * FROM alunos
WHERE notas < 10 and materia = 'história';

-- Selecione os alunos que têm o nome terminado com a letra "o" na tabela "Alunos".
SELECT * FROM alunos
WHERE nome LIKE '%o';

-- Selecione os alunos que estudam na escola "Escola Y" e têm idade menor que 30 anos na tabela "Alunos".
SELECT * FROM alunos
WHERE idade < 30 AND escolas = 'Escola Estadual Professor Antônio da Silva';

-- Selecione os alunos que estudam na escola "Escola Z" ou têm mais de 35 anos na tabela "Alunos".
SELECT * FROM alunos
WHERE idade > 35 AND escolas = 'Escola Estadual Professora Ana Maria';

-- Ordene os alunos da tabela "Alunos" por nome em ordem alfabética.

SELECT * FROM alunos
ORDER BY nome ASC;

-- Conte quantos alunos obtiveram a nota máxima na disciplina de "Química".

SELECT COUNT(*) AS nota_maxima
FROM alunos
WHERE disciplina = 'ingles' AND nota = 10;

-- Selecione os alunos cujo nome contém a letra "e" e a idade é maior que 18 na tabela "Alunos".

SELECT * FROM alunos
WHERE nome LIKE '%e%' AND idade > 18;

-- Escreva uma consulta SQL que liste o nome do aluno mais velho de cada escola.

SELECT escolas, MAX(idade) AS idade, nome
FROM alunos
GROUP BY escolas;
