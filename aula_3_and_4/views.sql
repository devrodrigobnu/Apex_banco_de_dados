-- database: c:\Users\ALUNO\Desktop\rl_logica\Aula\Apex_ensino\Apex_banco_de_dados\aula_3_and_4\mydatabase_alunos.db

create view SelectProgramadores AS
select id, nome, idade, email, linguagem_de_programacao
from Programadores;

