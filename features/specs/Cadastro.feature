#language: pt

@cadastro
Funcionalidade: Cadastro
-Eu como analista de negocio
-Quero que seja validado o cadastro de usuario
-Para que o usuário seja autenticado com sucesso

@cadastroSucesso
Cenario: Cadastro com sucesso

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário"
E clico no botão "Registrar"
Então sou direcionado para a pagina "Home Logada"

@cadastroUsuarioJaCadastrado
Cenario: Cadastro de Usuário já Cadastrado

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário" com um e-mail já Cadastrado
E clico no botão "Registrar"
Então uma mensagem toast aparecerá com a mensagem "Usuário já cadastrado."

@cadastroEmailInvalido
Cenario: Cadastro com E-mail Inválido

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário" com e-mail inválido
E clico no botão "Registrar"
Então uma mensagem toast aparecerá com a mensagem "O e-mail informado está inválido"

@cadastroSenhasDiferentes
Cenario: Cadastro com Senhas Diferentes

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário" com senhas diferentes
E clico no botão "Registrar"
Então uma mensagem toast aparecerá com a mensagem "As senhas não conferem."

@cadastroSenhaPequena
Cenario: Cadastro com Senha Pequena

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário" com uma senha pequena
E clico no botão "Registrar"
Então uma mensagem toast aparecerá com a mensagem "Senha precisar ter: uma letra maiúscula, uma letra minúscula, um número, uma caractere especial(@#$%) e tamanho entre 6-12."

@cadastroSenhaSemMaiuscula
Cenario: Cadastro com Senha sem letra Maiuscula

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário" com uma senha sem letra maiúscula
E clico no botão "Registrar"
Então uma mensagem toast aparecerá com a mensagem "Senha precisar ter: uma letra maiúscula, uma letra minúscula, um número, uma caractere especial(@#$%) e tamanho entre 6-12."

@cadastroSenhaSemMinuscula
Cenario: Cadastro com Senha sem letra Minuscula

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário" com uma senha sem letra minúscula
E clico no botão "Registrar"
Então uma mensagem toast aparecerá com a mensagem "Senha precisar ter: uma letra maiúscula, uma letra minúscula, um número, uma caractere especial(@#$%) e tamanho entre 6-12."

@cadastroSenhaSemNumero
Cenario: Cadastro com Senha sem Numeros

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário" com uma senha sem numeros
E clico no botão "Registrar"
Então uma mensagem toast aparecerá com a mensagem "Senha precisar ter: uma letra maiúscula, uma letra minúscula, um número, uma caractere especial(@#$%) e tamanho entre 6-12."

@cadastroSenhaSemEspecial
Cenario: Cadastro com Senha sem Caracteres Especiais

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário" com uma senha sem caracteres especiais
E clico no botão "Registrar"
Então uma mensagem toast aparecerá com a mensagem "Senha precisar ter: uma letra maiúscula, uma letra minúscula, um número, uma caractere especial(@#$%) e tamanho entre 6-12."

@cadastroSemNome
Cenario: Cadastro sem Nome

Dado que eu esteja na pagina de "Cadastro de Usuário"
Quando preencho o formulário de "Cadastro de Usuário" sem nome
E clico no botão "Registrar"
Então uma mensagem toast aparecerá com a mensagem "O campo 'name' é obrigatório."