-- database: c:\Users\rodri\OneDrive\Desktop\apex\banco_de_dados\aula_1_and_2\mydatabase.db

SELECT * FROM usuarios;

-- Selecionando o maior valor na coluna idade (MAX)
select MAX(idade) from usuarios;


-- Selecionando o menor valor na coluna idade (MIN)
select MIN(idade) from usuarios;

-- Selecionando a média da coluna idade usando AVG:
-- AVG = average, que é média em PT-BR
select AVG(idade) from usuarios;

-- AS = como, traga a média como 'nome_da_coluna' com média
select AVG(idade) as media_idade from usuarios;


-- COUNT = significa contar, ele conta dados nas colunas
select COUNT(*) as quantidade from usuarios;

select COUNT(email) from usuarios;

select COUNT(*) from usuarios;

select COUNT(*) from usuarios
where idade < 18;

select COUNT(email) as quantidade_final
from usuarios
where email is not null;
-- IS NOT NULL serve para verificar campos/colunas que
-- não estão vazias

insert into usuarios(nome, idade, email)
values ('rodrigo', 40, null);

select count(*) as contador
from usuarios
where email is null;


-- LIKE = serve para buscar palavras ou partes de palavras
-- Para usar o LIKE, precisamos usar o % %

-- 'a%' -> começam com A
-- '%a' -> terminam com A
-- '%a%' -> buscando nomes que tenham a letra A no meio das palavras.
select nome from usuarios 
where nome like 'a%'; 

select nome from usuarios
where nome like '%a';

select nome from usuarios
where nome like '%a%'

