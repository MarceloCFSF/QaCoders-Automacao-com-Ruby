Dado('que eu esteja na pagina de {string}') do |string|
  cadastro.load
  home.click_button('Login')
  home.click_button('Cadastrar')
  cadastro.validate_page
end

Quando('preencho o formulário de {string}') do |string|
  cadastro.signup_user_valid
end

Quando('preencho o formulário de {string} com um e-mail já Cadastrado') do |string|
  cadastro.signup_user_already_exist
end

Quando('preencho o formulário de {string} com e-mail inválido') do |string|
  cadastro.signup_user_invalid_email
end

Quando('preencho o formulário de {string} com senhas diferentes') do |string|
  cadastro.signup_user_different_passwords
end

Quando('preencho o formulário de {string} com uma senha pequena') do |string|
  cadastro.signup_user_small_password
end

Quando('preencho o formulário de {string} com uma senha sem letra maiúscula') do |string|
  cadastro.signup_user_password_without_uppercase
end

Quando('preencho o formulário de {string} com uma senha sem letra minúscula') do |string|
  cadastro.signup_user_password_without_lowercase
end

Quando('preencho o formulário de {string} com uma senha sem numeros') do |string|
  cadastro.signup_user_password_without_numbers
end

Quando('preencho o formulário de {string} com uma senha sem caracteres especiais') do |string|
  cadastro.signup_user_password_without_special
end

Quando('preencho o formulário de {string} sem nome') do |string|
  cadastro.signup_without_name
end

