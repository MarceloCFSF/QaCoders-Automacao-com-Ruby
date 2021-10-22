Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
  def login
    @login ||=Login.new
  end

  def cadastro
    @cadastro ||= Cadastro.new
  end

  def home
    @home ||= Home.new
  end
end