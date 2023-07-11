import sqlite3
import os

os.system('cls')
conexao = sqlite3.connect('mydatabase.db')
print('Conexão criada com sucesso')
cursor = conexao.cursor()

# Mensagem pra CRUD
menu_crud = '\nEscolha uma operação abaixo>: '
menu_crud += '\n1 - Selecionar'
menu_crud += '\n2 - Deletar'
menu_crud += '\n3 - Atualizar'
menu_crud += '\n4 - Inserir'
menu_crud += '\n5 - Sair'
menu_crud += '\nInforme a opção: '

# While que rodará o programa
while True:
    operacao = input(menu_crud)
