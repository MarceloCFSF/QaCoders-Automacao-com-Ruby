Dado('que eu esteja na pagina de {string} do Qa.Coders') do |page|
  login.load
  home.click_button(page)
  login.validate_page
end

Quando('informo os dados de acesso validos') do
  login.login_user_valid
end

Quando('informo os dados de acesso invalidos') do
  login.login_user_invalid
end

Quando('informo os dados de acesso, com um e-mail invalido') do
  login.login_user_invalid_email
end