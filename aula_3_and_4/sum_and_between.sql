-- database: c:\Users\rodri\OneDrive\Desktop\apex\banco_de_dados\aula_3\mydatabase.db

-- Somando todas as idades:
SELECT SUM(idade) AS soma_das_idades
FROM programadores;


-- Somando todos os ids
SELECT SUM(id) AS soma_dos_ids
FROM Programadores;

-- Selecionando idades entre 25 e 35
SELECT * FROM Programadores
WHERE idade BETWEEN 25 and 35;

-- Selecionando ids entre 25 e 35
SELECT * FROM Programadores
WHERE idade BETWEEN 25 and 35;