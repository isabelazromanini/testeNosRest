#language: pt
@users
Funcionalidade: Manter dados de Usuario através da API
Como um usuário do sistema
Eu quero realizar as requisições na API
A fim de manipular as informações do Cadastro de Usuario

Cenário: Cadastrar um usuario 
    Dado o endereço da API para manter o cadastro de usuario
    Quando realizar uma requisição para cadastrar um usuario
    Então a API irá retornar os dados do cadastro de usuario respondendo o código 201

Cenário: Consultar um usuario 
    Dado o endereço da API para manter o cadastro de usuario
    Quando realizar uma requisição passando o ID do usuario
    Então a API irá retornar os dados do usuario correspondente respondendo o código 200

Cenário: Alterar um usuario
    Dado o endereço da API para manter o cadastro de usuario
    Quando realizar uma requisição para alterar um usuario
    Então a API irá retornar os dados do usuario alterados respondendo o código 200

Cenário: Deletar um usuario
    Dado o endereço da API para manter o cadastro de usuario
    Quando realizar uma requisição para excluir um usuario
    Então a API deverá retornar os dados da exclusão respondendo o código 200
