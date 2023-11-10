# language: pt
# created by eduardo.araujo at 10/11/2023

Funcionalidade: Realizar um cadastro e logar com o usuário no app.

  @cadastro
  Esquema do Cenário: Realizar um cadastro
    Dado que estou na tela de registro do app
    Quando eu inserir as seguintes informações
      |  Nome    |    Phone   |     email    |   senha    |
      | <Nome>   |   <Phone>  |    <email>   |  <senha>   |
    Então devo ser registrado com sucesso e visualizar a mensagem "Registration Successfull"
    Exemplos:
      |   Nome    |    Phone    |        email      |     senha    |
      | Eduardo   | 83988547076 | eduardo@gmail.com |   match123   |

  @login
  Esquema do Cenário: Realizar login com o usuario cadastrado com sucesso
    Dado que estou na tela de registro do app
    Quando eu inserir as informações de login
      |  email   |   senha   |
      | <email>  |  <senha>  |
    Então devo visualizar a mensagem de logado com sucesso "You are now logged in"
    Exemplos:
      |           email    |    senha   |
      | eduardo@gmail.com  |   match123 |

  @login_invalido
  Esquema do Cenário: Realizar login com credenciais inexistentes e retornar erro
    Dado que estou na tela de registro do app
    Quando eu inserir as informações de login
      |  email   |   senha   |
      | <email>  |  <senha>  |
    Então devo visualizar a mensagem de erro "Login error"
    Exemplos:
      |           email    |    senha   |
      | eduardo1222@g.com  |   matcbtbt |