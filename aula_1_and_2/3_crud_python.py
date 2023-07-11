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
    # Ler a opção do usuário
    operacao = input(menu_crud)

    # Verificar a operação informada
    if operacao == '1':
        os.system('cls')

        # Executar o código SQL
        cursor.execute(f''' 
            SELECT * FROM usuarios
        ''')

        # Extrair o resultado que voltou do banco de dados
        # através do SELECT que selecionou os dados para o programa

        resultados = cursor.fetchall()
             
    
        for item in resultados:
            print(item)
        
    elif operacao == '2':
        ...
    elif operacao == '3':
        ...
    elif operacao == '4':
        ...
    elif operacao == '5':
        print('Laço de repetição parado com sucesso!')
        break