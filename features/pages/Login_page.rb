class Login < SitePrism::Page
  set_url '/'

  element :welcome, 'div[class="welcome"]'
  element :btn_login, 'li[style="float:right"]'
  element :ipt_email, 'input[id="authEmail"]'
  element :ipt_pass, 'input[id="authPass"]'
  element :btn_entrar, 'button[class="btn btn-primary btn-block btn-flat"]'
  element :user_info, 'div[class="user-panel ng-scope"] p[class="ng-binding"]'

  def login_user_invalid
    ipt_email.set "teste@teste.com.br"
    ipt_pass.set "12345678"
  end
  
  def login_user_invalid_email
    ipt_email.set "teste"
    ipt_pass.set "A4CLtt6txD*M7%"
  end
  
  def login_user_valid
    ipt_email.set "m.cecilio@teste.com.br"
    ipt_pass.set "A4CLtt6txD*M7%"
  end

  def validate_page
    text = "Entrar"
    if !btn_entrar.text.eql?(text)
      raise "Expected element: #{text}, but returned: #{btn_entrar.text}"
    end
  end

end