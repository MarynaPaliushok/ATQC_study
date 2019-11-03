class RegisterPage < SitePrism::Page
  set_url 'http://192.168.56.101'

  element :register_btn, :xpath, '//*[@id="account"]/ul/li[2]/a'
  element :login_field, '#user_login'
  element :pass_field, '#user_password'
  element :pass_confirm_field, '#user_password_confirmation'
  element :firstname, '#user_firstname'
  element :lastname, '#user_lastname'
  element :mail_usr, '#user_mail'
  element :hide_mail, '#pref_hide_mail'
  element :language, '#user_language'
  element :submit_btn, '#new_user > input[type=submit]:nth-child(4)'
end