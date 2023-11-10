class LoginScreen < Utils

  def initialize
    @email_login = 'etLogGmail'
    @password_login = 'etLoginPassword'
    @button_login = 'btnLogin'
    @new_user = 'tvRegister'
  end

  def new_register_click
    click_element(@new_user, 5)
  end

  def login(email, password)
    type_text(@email_login, email, 5)
    type_text(@password_login, password, 5)
    click_element(@button_login, 5)
  end

  def login_successfull(message, timeout)
    expected_message(message, timeout)
  end

end