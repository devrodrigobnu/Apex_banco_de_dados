-- database: C:\Users\rodri\OneDrive\Desktop\apex\banco_de_dados\aula_1_and_2\mydatabase.db

CREATE TABLE IF NOT EXISTS uzuarios (
    -- Campo do tipo inteiro, com chave primária
    id INTEGER PRIMARY KEY,
    -- TEXT é usado para campos do tipo string
    nome TEXT(100),
    -- INTEGER é usado para campos com números inteiros
    idade INTENGER, 
    -- O último campo não leva vírgula
    email TEXT(100)
);