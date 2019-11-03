module FeatureHelper
  def login_user(username, password)
    @login_page.sign_in_btn.click
    @login_page.username.set username
    @login_page.password.set password
    @login_page.log_in_btn.click
  end

  def register_user(username, password, email)
    @register_page = RegisterPage.new
    @register_page.load

    @register_page.register_btn.click
    @register_page.login_field.set username
    @register_page.pass_field.set password
    @register_page.pass_confirm_field.set password

    @register_page.firstname.set 'marina1'
    @register_page.lastname.set 'pali'
    @register_page.mail_usr.set email
    @register_page.hide_mail.set true
    @register_page.select 'English', from: 'Language'
    @register_page.submit_btn.click
  end
end