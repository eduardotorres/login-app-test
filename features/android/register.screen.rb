class RegisterScreen < Utils

  def initialize
    @name = 'etRegName'
    @phone = 'etRegPhone'
    @email = 'etRegGmail'
    @password = 'etRegPassword'
    @btn_register = 'btnRegLogin'
  end

  def register_new_user(name, phone, email, password)
    type_text(@name,name,5)
    type_text(@phone,phone,5)
    type_text(@email,email,5)
    type_text(@password,password,5)
    click_element(@btn_register,5)
  end

end