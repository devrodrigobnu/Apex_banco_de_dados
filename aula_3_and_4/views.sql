-- database: c:\Users\ALUNO\Desktop\rl_logica\Aula\Apex_ensino\Apex_banco_de_dados\aula_3_and_4\mydatabase_alunos.db

-- Criando uma view
create view SelectProgramadores AS
select id, nome, idade, email, linguagem_de_programacao
from Programadores;

-- Criando uma view nova
create view ProgramadoresUsuariosEmailMatch AS
select programadores.nome as Programador,
Programadores.email as ProgramadoresUsuariosEmailMatch,
Usuarios.nome_usu as Usuario
from Programadores inner join usuarios
on Programadores.email = usuarios.email_usu
where nome is NOT NULL
order by nome asc;

-- Chamar a view nova
select * from ProgramadoresUsuariosEmailMatch


-- Deletar view
drop view SelectProgramadores;

drop view ProgramadoresUsuariosEmailMatch;