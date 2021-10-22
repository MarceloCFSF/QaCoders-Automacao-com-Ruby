Quando('clico no botão {string}') do |name|
  home.click_button(name)
end

Então('sou direcionado para a pagina {string}') do |string|
  home.validate_page_loged
end

Então('uma mensagem toast aparecerá com a mensagem {string}') do |text|
  home.validate_error(text)
end