#language: pt

Funcionalidade: Login
-Eu como analista de negocio
-Quero que seja validado o login de usuario
-Para que o usuário seja autenticado com sucesso

@loginSucesso
Cenario: Login com sucesso

Dado que eu esteja na pagina de "Login" do Qa.Coders
Quando informo os dados de acesso validos
E clico no botão "Entrar"
Então sou direcionado para a pagina "Home Logada"

@loginDadosInvalidos
Cenario: Login com dados invalidos

Dado que eu esteja na pagina de "Login" do Qa.Coders
Quando informo os dados de acesso invalidos
E clico no botão "Entrar"
Então uma mensagem toast aparecerá com a mensagem "Os dados informados são inválidos"

@loginEmailInvalido
Cenario: E-mail invalido

Dado que eu esteja na pagina de "Login" do Qa.Coders
Quando informo os dados de acesso, com um e-mail invalido
E clico no botão "Entrar"
Então uma mensagem toast aparecerá com a mensagem "Os dados informados são inválidos"
E um alerta com a frase "Please include @ in the email address."