class LoginPage < SitePrism::Page
  set_url 'http://192.168.56.101'
  element :sign_in_btn, :xpath, '//*[@id="account"]/ul/li[1]/a'
  element :email_field, '#username'
  element :password, '#password'
  element :log_in_btn, '#login-submit'
end