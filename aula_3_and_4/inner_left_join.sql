-- database: c:\Users\ALUNO\Desktop\rl_logica\Aula\Apex_ensino\Apex_banco_de_dados\aula_3_and_4\mydatabase_alunos.db


-- Cria tabela usuarios com mesmas colunas que programadores
-- inserir 10 linhas com dados válidos

CREATE TABLE IF NOT EXISTS usuarios (
    id INTEGER PRIMARY KEY,
    nome_usu TEXT (20),
    idade_usu INTEGER,
    email_usu TEXT (20),
    tipo_conta_usu TEXT (20),
    sal_usu double
);

INSERT INTO usuarios (nome_usu, idade_usu, email_usu, tipo_conta_usu, sal_usu) VALUES
    ('João', 25, 'joao@email.com', 'Normal', 2500.00),
    ('Maria', 30, 'maria@email.com', 'Premium', 3500.00),
    ('Pedro', 22, 'pedro@email.com', 'Normal', 2000.00),
    ('Ana', 28, 'ana@email.com', 'Premium', 4000.00),
    ('Carlos', 35, 'carlos@email.com', 'Normal', 2800.00),
    ('Lúcia', 27, 'lucia@email.com', 'Premium', 4500.00),
    ('Fernando', 29, 'fernando@email.com', 'Normal', 2300.00),
    ('Sofia', 31, 'sofia@email.com', 'Premium', 5000.00),
    ('Mário', 26, 'mario@email.com', 'Normal', 2600.00),
    ('Laura', 33, 'laura@email.com', 'Premium', 3800.00);


-- Obter uma lista dos programadores juntamente com os usarios
-- correspondentes com base em seus endereços de e-mail.

SELECT Programadores.nome as nome_programador,
usuarios.nome_usu as nome_usuario,
Programadores.email as email_bateu
FROM Programadores INNER JOIN usuarios
ON Programadores.email = usuarios.email_usu;

-- O INNER JOIN é utilizado para combinar as tabelas,
-- Ou seja, mostrar os dados de ambas, com filtros,
-- com base na coluna informada depois do 'ON'

-- exemplo 1 = Realizando o mesmo com a idade

SELECT Programadores.nome as nome_programador,
Usuarios.nome_usu as nome_usuario,
Programadores.idade as idade_bateu
FROM Programadores
INNER JOIN usuarios
ON Programadores.idade = usuarios.idade_usu;

-- exemplo 2 = realizando o mesmo com o salario

SELECT Programadores.nome as nome_programador,
Usuarios.nome_usu as nome_usuarios,
Programadores.salario_dev as salario_bateu
FROM Programadores
INNER JOIN usuarios
ON Programadores.salario_dev = usuarios.sal_usu;



-- Agora, vamos supor que você deseja obter uma lista de todos 
-- os programadores e, se houver, o nome do usuário correspondente
-- com base no endereço de e-mail

select Programadores.nome as nome_programador,
Usuarios.nome_usu as nome_usuario,
Programadores.email as email_pro
from Programadores
left join usuarios
on Programadores.email = usuarios.email_usu;


-- -- |--- EX 2 ---|
-- Criar tabela Contatos com mesmas colunas que Usuarios + 
-- coluna telefone 
-- (e outras se desejado)
-- Insira 20 linhas na tabela Contatos e repita o exercícios anterior
-- trocando a tabela usuarios pela tabela contatos*

CREATE TABLE IF NOT EXISTS contatos (
    id INTEGER PRIMARY KEY,
    nome_usu TEXT (20),
    idade_usu INTEGER,
    email_usu TEXT (20),
    tipo_conta_usu TEXT (20),
    sal_usu double
);

INSERT INTO contatos (nome_usu, idade_usu, email_usu, tipo_conta_usu, sal_usu) VALUES
    ('João', 25, 'joao@email.com', 'Normal', 2500.00),
    ('Maria', 30, 'maria@email.com', 'Premium', 3500.00),
    ('Pedro', 22, 'pedro@email.com', 'Normal', 2000.00),
    ('Ana', 28, 'ana@email.com', 'Premium', 4000.00),
    ('Carlos', 35, 'carlos@email.com', 'Normal', 2800.00),
    ('Lúcia', 27, 'lucia@email.com', 'Premium', 4500.00),
    ('Fernando', 29, 'fernando@email.com', 'Normal', 2300.00),
    ('Sofia', 31, 'sofia@email.com', 'Premium', 5000.00),
    ('Mário', 26, 'mario@email.com', 'Normal', 2600.00),
    ('Laura', 33, 'laura@email.com', 'Premium', 3800.00),
    ('Alice', 28, 'alice@email.com', 'Premium', 4000.00),
    ('Bob', 35, 'bob@email.com', 'Normal', 3000.00),
    ('Charlie', 22, 'charlie@email.com', 'Premium', 4500.00),
    ('David', 29, 'david@email.com', 'Normal', 2500.00),
    ('Eva', 31, 'eva@email.com', 'Premium', 5000.00),
    ('Frank', 27, 'frank@email.com', 'Normal', 2800.00),
    ('Grace', 33, 'grace@email.com', 'Premium', 5500.00),
    ('Henry', 26, 'henry@email.com', 'Normal', 2600.00),
    ('Ivy', 30, 'ivy@email.com', 'Premium', 5200.00);


-- Repetir exercicios acima com left e inner join
-- trocando a tabela usuarios por contatos recem criada

-- INNER JOIN - EMAIL BATEU
SELECT Programadores.nome as nome_programador,
contatos.nome_usu as nome_usuario,
Programadores.email as email_bateu
FROM Programadores INNER JOIN contatos
ON Programadores.email = contatos.email_usu;

-- INNER JOIN - IDADE BATEU
SELECT Programadores.nome as nome_programador,
contatos.nome_usu as nome_usuario,
Programadores.idade as idade_bateu
FROM Programadores INNER JOIN contatos
ON Programadores.idade = contatos.idade_usu;

-- INNER JOIN - SALARIO BATEU

SELECT Programadores.nome as nome_programador,
contatos.nome_usu as nome_usuario,
Programadores.salario_dev as salario_bateu
FROM Programadores INNER JOIN contatos
ON Programadores.salario_dev = contatos.sal_usu;

-- LEFT JOIN EMAIL
select Programadores.nome as nome_programador,
contatos.nome_usu as nome_usuario,
Programadores.email as email_pro
FROM Programadores
LEFT JOIN contatos
ON Programadores.email = contatos.email_usu;

-- LEFT JOIN IDADE
select Programadores.nome as nome_programador,
contatos.nome_usu as nome_usuario,
Programadores.idade as idade_pro
from Programadores
LEFT JOIN contatos
on Programadores.idade = contatos.idade_usu;

-- LEFT JOIN SALARIO

select Programadores.nome as nome_progrador,
contatos.nome_usu as nome_usuario,
Programadores.salario_dev as salario_pro
FROM Programadores
LEFT JOIN contatos
on Programadores.salario_dev = contatos.sal_usu;


-- Agora, suponha que você queira obter uma lista dos Usuarios juntamente 
-- com os contatos correspondentes com base no id.
select usuarios.nome_usu as nome_programador,
contatos.nome_usu as nome_usuario
from usuarios inner join contatos
on usuarios.id = contatos.id;

-- Vamos inserir a coluna ativo em ambas as tabelas do tipo boolean 
-- (pesquisar como inserir boolean)
ALTER TABLE contatos
ADD COLUMN ativo BOOLEAN;

ALTER TABLE usuarios
add COLUMN ativo BOOLEAN;

-- Metade das linhas das duas tabelas tem que estar com o ativo 
-- sendo true, e a outra metade false

update contatos
set ativo = true
where id = 10;

update contatos
set ativo = false
where id = 19;

update usuarios
set ativo = true
where id = 5;

update usuarios
set ativo = false
where id = 10;

-- A consulta deve retornar apenas os usuarios que possuem um id na tabela 
-- contatos correspondente ao id da tabela usuarios.
-- Após o ON, adicione um where no final para adicionar ao filtro também
-- apenas as idades que são maiores que 18 e menores que 30
-- No Final ordene por nome

select usuarios.nome_usu as nome_programador,
contatos.nome_usu as nome_contato,
usuarios.id as id_bateu
from usuarios inner join contatos
on usuarios.id = contatos.id
WHERE usuarios.idade_usu > 18 AND usuarios.idade_usu < 30
and contatos.idade_usu BETWEEN 18 and 30
ORDER BY usuarios.nome_usu ASC;

