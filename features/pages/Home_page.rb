class Home < SitePrism::Page
  set_url '/'
  element :btn_login, 'li[style="float:right"]'
  element :btn_entrar, 'button[class="btn btn-primary btn-block btn-flat"]'
  element :btn_signup, 'a[class="link-no-arquive ng-binding"]'
  element :btn_save, 'button[class="btn btn-primary btn-block btn-flat"]'
  element :user_info, 'div[class="user-panel ng-scope"] p[class="ng-binding"]'
  element :error_message, 'div[class="toast-message"]'

  def click_button(name)
    case name
      when "Login"
        btn_login.click
      when "Entrar"
        btn_entrar.click
      when "Registrar"
        btn_save.click
      when "Cadastrar"
        btn_signup.click
      else
        raise "Botão #{name} não encontrado"
    end
  end

  def validate_page_loged
    text = "Teste"
    if !user_info.text.eql?(text)
      raise "Expected element: #{text}, but returned: #{user_info.text}"
    end
  end

  def validate_error(text)
    if !error_message.text.eql?(text)
      raise "Expected element: #{text}, but returned: #{error_message.text}"
    end
  end
end