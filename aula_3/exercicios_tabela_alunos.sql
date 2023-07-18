-- database: c:\Users\ALUNO\Desktop\rl_logica\Aula\Apex_ensino\Apex_banco_de_dados\aula_3\mydatabase.db


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
WHERE idade and materia is null;

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
VALUES ('Valentina', 12, 5.5, 'geografia');


-- Crie uma coluna escola e insira as escolas para os alunos usando update 

ALTER TABLE alunos
ADD COLUMN escolas;

UPDATE alunos
SET escolas = 'João Widemann'
WHERE id = 1;

-- Selecione os alunos cujo nome começa com a letra "A" na tabela "Alunos".

-- Ordene os alunos da tabela "Alunos" por idade em ordem crescente.

-- Selecione os alunos que têm idade entre 20 e 25 anos na tabela "Alunos".

-- Selecione os alunos que têm idade maior que 18 e que estudam na escola "Bom Jesus" na tabela "Alunos".

-- Escreva uma consulta SQL que calcule a média de idade dos alunos para cada escola

-- Selecione os alunos que obtiveram uma nota maior ou igual a 7 na disciplina de "Matemática".

-- Selecione os alunos que obtiveram uma nota menor que 5 na disciplina de "História".

-- Selecione os alunos que têm o nome terminado com a letra "o" na tabela "Alunos".

-- Selecione os alunos que estudam na escola "Escola Y" e têm idade menor que 30 anos na tabela "Alunos".

-- Selecione os alunos que estudam na escola "Escola Z" ou têm mais de 35 anos na tabela "Alunos".

-- Ordene os alunos da tabela "Alunos" por nome em ordem alfabética.

-- Conte quantos alunos obtiveram a nota máxima na disciplina de "Química".

-- Selecione os alunos cujo nome contém a letra "e" e a idade é maior que 25 na tabela "Alunos".

-- Escreva uma consulta SQL que liste o nome do aluno mais velho de cada escola.