class Cadastro < SitePrism::Page
  set_url '/'

  element :welcome, 'div[class="welcome"]'
  element :ipt_name, 'input[id="authName"]'
  element :ipt_email, 'input[id="authEmail"]'
  element :ipt_pass, 'input[id="authPass"]'
  element :ipt_confirm_pass, 'input[id="authConfirmPass"]'
  element :error_message, 'div[class="toast-message"]'
  element :user_info, 'div[class="user-panel ng-scope"] p[class="ng-binding"]'
  element :btn_save, 'button[class="btn btn-primary btn-block btn-flat"]'

  def login_user_invalid
    ipt_email.set "teste@teste.com.br"
    ipt_pass.set "12345678"
  end
  
  def signup_user_invalid_email
    ipt_name.set "Teste"
    ipt_email.set "teste"
    ipt_pass.set "A4CLtt6txD*M7%"
    ipt_confirm_pass.set "A4CLtt6txD*M7%"
  end
  
  def signup_user_different_passwords
    ipt_name.set "Teste"
    ipt_email.set "m.cecilio@teste.com.br"
    ipt_pass.set "A4CLtt6txD*M7%"
    ipt_confirm_pass.set "A4CLtt6txD*M7#"
  end

  def signup_user_small_password
    ipt_name.set "Teste"
    ipt_email.set "m.cecilio@teste.com.br"
    ipt_pass.set "A4Lt%"
    ipt_confirm_pass.set "A4Lt%"
  end

  def signup_user_password_without_uppercase
    ipt_name.set "Teste"
    ipt_email.set "m.cecilio@teste.com.br"
    ipt_pass.set "a4cltt6txd*m7%"
    ipt_confirm_pass.set "a4cltt6txd*m7%"
  end

  def signup_user_password_without_lowercase
    ipt_name.set "Teste"
    ipt_email.set "m.cecilio@teste.com.br"
    ipt_pass.set "A4CLTT6TXD*M7%"
    ipt_confirm_pass.set "A4CLTT6TXD*M7%"
  end

  def signup_user_password_without_numbers
    ipt_name.set "Teste"
    ipt_email.set "m.cecilio@teste.com.br"
    ipt_pass.set "ACLtttxD*M%"
    ipt_confirm_pass.set "ACLtttxD*M%"
  end

  def signup_user_password_without_special
    ipt_name.set "Teste"
    ipt_email.set "m.cecilio@teste.com.br"
    ipt_pass.set "A4CLtt6txDM7"
    ipt_confirm_pass.set "A4CLtt6txDM7"
  end

  def signup_without_name
    ipt_email.set Faker::Internet.unique.email
    ipt_pass.set "A4CLtt6txD*M7%"
    ipt_confirm_pass.set "A4CLtt6txD*M7%"
  end

  def signup_user_already_exist
    ipt_name.set "Teste"
    ipt_email.set "m.cecilio@teste.com.br"
    ipt_pass.set "A4CLtt6txD*M7%"
    ipt_confirm_pass.set "A4CLtt6txD*M7%"
  end

  def signup_user_valid
    ipt_name.set "Teste"
    ipt_email.set Faker::Internet.unique.email
    ipt_pass.set "A4CLtt6txD*M7%"
    ipt_confirm_pass.set "A4CLtt6txD*M7%"
  end

  def validate_page_loged
    text = "Teste"
    puts user_info.text
    if !user_info.text.eql?(text)
      raise "Expected element: #{text}, but returned: #{user_info.text}"
    end
  end

  def validate_page
    text = "Registrar"
    if !btn_save.text.eql?(text)
      raise "Expected element: #{text}, but returned: #{btn_save.text}"
    end
  end

  def validate_error(text)
    if !error_message.text.eql?(text)
      raise "Expected element: #{text}, but returned: #{error_message.text}"
    end
  end

  def firstName
    name = ["Agda", "Andréia", "André", "Adriano", "Abinadar", "Alice", "Ariana", "Alencar", "Alcemir", "Aline", "Américo", "Ariane", "Bruno", "Bruna", "Beatriz", "Berenice", "Benedito", "Benedita", "Carlos", "Camila", "Caroline", "Camilo", "Ceverino", "Denis", "Denise", "Daniel", "Dorivaldo", "Darley", "Edson", "Eliane", "Eliana", "Ester", "Everaldo", "Elias", "Estenio", "Etevaldo", "Euclides", "Eliezer", "Everaldo", "Eduardo", "Emanuel", "Eunice", "Elaine", "Jaqueline", "Josivaldo", "josefina", "Larissa", "Laís", "Laercío", "Leandro", "Lucas", "Maria", "Marcos", "Melissa", "Marcelo", "Mariana", "Matheus", "Milena", "Neilson", "Naiara", "Nilson", "Nerivaldo", "Noemia", "Núbia", "Nilvan", "Olavo", "Oliver", "Olindo", "Paulo", "Paula", "Pedro", "Pedrina", "Pivanne", "Patrícia", "Quelvin", "Queila", "Ronaldo", "Ronan", "Romildo", "Rodolfo", "Rita", "Ravier", "Romã", "Salivan", "Selton", "Simirá", "Tadeu", "Taís", "Tamilá", "Tadeu", "Telma", "Ulisson", "Umberto", "Vicente", "Vanice", "Vera", "Valdermor", "Zulmira", "Zenira"]
    return name[rand(name.length)]
  end

  def lastName
    name = ["Alves da Silva", "Andrade Barbosa", "Barbosa Oliveira", "Oliveira da Silva", "Alves Pereira", "Conceição Barbosa", "Allen Young", "Hernandez King", "Wright Lopez", "Hill Scott", "Green Adams", "Conceição da Costa", "da Costa Oliveira", "Rodrigues de Oliveira", "Amaral Neto de Souza", "Pereira da Conceição", "Barros Neto de Andrade", "Borges de Andrade Pereira da Silva", "Batista Campos do Amaral", "Cardoso de Oliveira", "Pontes Guimarães", "Dias de Jesus", "Barbos de Lima", "Gonçalves da Silva", "Gonsalves de Lima", "Pereira de Oliveira Batista", "Dias de Freitas", "Ferreira", "Garcia da Paixão", "Lima Lopes", "Jesus da Silva", "da Silva de Lima", "da Silva Gonsalves Texeira", "Fernandes de Paula", "de Paula da Silva", "Barbosa de Mello Oliveira", "Oliveira Neto Conceição da Paixão"]

    return name[rand(name.length)]
  end

  def fullName 
    return firstName + ' ' + lastName
  end

  def randomNumber
    Random.new_seed
    return rand(16).to_s
  end

  def guidID
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.gsub(/[xy]/, x => randomNumber, y => randomNumber)
  end

  def emailProvider
    email = ["@hotmail.com", "@gmail.com", "@terra.com.br"]
    randomItem = email[rand(email.length())]
    return randomItem
  end

  def email
    return guidID + firstName + emailProvider
  end

end