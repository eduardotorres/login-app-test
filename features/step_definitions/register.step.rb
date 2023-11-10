Dado('que estou na tela de registro do app') do
  @new_user = LoginScreen.new
  @new_user.new_register_click
end

Quando('eu inserir as seguintes informações') do |table|
  data = table.hashes.first
  @register = RegisterScreen.new
  @register.register_new_user(data['Nome'], data['Phone'], data['email'], data['senha'])
end

Quando('eu inserir as informações de login') do |table|
  data = table.hashes.first
  @login = LoginScreen.new
  @login.login(data['email'], data['senha'])
end

Então('devo ser registrado com sucesso e visualizar a mensagem {string}') do |message|
  @message = LoginScreen.new
  @message.expected_message(message, 5)
end

Então('devo visualizar a mensagem de logado com sucesso {string}') do |message|
  @message = LoginScreen.new
  @message.expected_message(message, 5)
end

Então('devo visualizar a mensagem de erro {string}') do |message|
  @message = LoginScreen.new
  @message.expected_message(message, 5)
end