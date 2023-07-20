-- database: c:\Users\rodri\OneDrive\Desktop\apex\banco_de_dados\aula_3_and_4\mydatabase.db


-- Criar uma tabela nova, inserir 10 linhas e 8 colunas na tabela
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


INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('rodrigo', 32, 'rodrigo2611l@gmail.com', 'luchtenberg', 'rodriguera', 'blumenau', 'sc');

INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('felipe', 18, 'felipe@gmail.com', 'lingner', 'sun', 'blumenau', 'sc');

INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('joao', 25, 'joao@gmail.com', 'silva', 'jão', 'curitiba', 'pr');

INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('maria', 22, 'maria@gmail.com', 'santos', 'mia', 'indaial', 'sc');

INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('pedro', 60, 'pedro@gmail.com', 'oliveira', 'pedrin', 'itajai', 'sc');

INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('ana', 43, 'ana@gmail.com', 'pereira', 'aninha', 'são paulo', 'sp');

INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('luiz', 35, 'luiz@gmail.com', 'costa', 'luizin', 'rio de janeiro', 'rj');

INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('carla', 70, 'carla@gmail.com', 'almeida', 'carlinha', 'belo horizonte', 'mg');

INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('rafael', 40, 'rafael@gmail.com', 'fernandes', 'fael', 'brasilia', 'df');

INSERT INTO tabela_1 (nome, idade, email, sobrenome, apelido, cidade, estado)
VALUES ('sofia', 76, 'sofia@gmail.com', 'lima', 'fia', 'recife', 'pe');

