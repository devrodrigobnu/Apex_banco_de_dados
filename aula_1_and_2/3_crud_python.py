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
        os.system('cls')
        
        # Ler id da coluna a deletar
        id_deletar = input('Informe o ID da coluna a ser deletada: ')
        
        # Executar o código SQL
        cursor.execute(f''' 
            DELETE FROM usuarios
            WHERE id = {id_deletar}
        ''')
        
        # Printar mensagem de sucesso
        if cursor.rowcount > 0:
            print('Registro deletado com sucesso!')
        else:
            print('Nenhum registro deletado!')
    
    
    elif operacao == '3':
        os.system('cls')
        
        # Ler o id da coluna a modificar
        id_modificar = input('Informe o ID da coluna a ser modificada: ')
        
        # Executar o código SQL
        nome_novo = input('Informe o novo nome: ')
        novo_email = input('Informe novo e-mail: ')
        nova_idade = input('Informe nova idade: ')
        cursor.execute(f'''
        UPDATE usuarios 
        SET nome = '{nome_novo}',
            email = '{novo_email}',
            idade = {nova_idade}
        WHERE id = {id_modificar}
    ''')
        
         # Printar mensagem de sucesso
        if cursor.rowcount > 0:
            print('Registro atualizado com sucesso')
        else:
            print('Nenhum registro foi atualizado')    
                
                
    elif operacao == '4':
        os.system('cls')
        
        # Ler os dados novos
        novo_nome = input('Informe o novo nome: ')
        novo_email = input('Informe o novo e-mail: ')
        nova_idade = input('Informa a nova idade: ')
        
        # Validar os dados
        # Se válidos, vamos inserir na base de dados 
        if novo_nome and novo_email and nova_idade:
            cursor.execute(f'''
                INSERT INTO usuarios (nome, email, idade) VALUES ('{novo_nome}', '{novo_email}', {nova_idade})               
        ''')

            print('Registro inserido com sucesso!')
        else:
            print('Dados inválidos.')           
        
    elif operacao == '5':
        print('Laço de repetição parado com sucesso!')
        break

#Compactar nossas mudanças, para então enviar elas ao banco de dados
conexao.commit()
print('Comitou dados com sucesso!')
conexao.close()
print('Conexão fechada com sucesso!')