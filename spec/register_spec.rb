require 'securerandom'

feature 'registration of a new user', js: true do
  scenario 'register a new user' do

    unique_value = SecureRandom.uuid.to_s
    password = 'qwerty123'
    username = 'mpali_' + unique_value
    email = 'user_' + unique_value + '@gmail.com'

    @register_page = RegisterPage.new
    @register_page.load

    @register_page.register_btn.click
    expect(page).to have_content 'Register'

    register_user(username, password, email)

    sleep(2)

    @sigh_out_page = SighOut.new
    @sigh_out_page.sigh_out_btn.click

    @login_page = LoginPage.new
    @login_page.load

    login_user(username, password)

    expect(page).to have_content 'Logged in'

    sleep (2)
    # @register_page.pass_field.set test_pass
    # @register_page.pass_confirm_field.set test_pass
    #
    # @register_page.firstname.set 'marina1'
    # @register_page.lastname.set 'pali'
    # @register_page.mail_usr.set 'qwerty' + unique_value + '@gmail.com'
    # @register_page.hide_mail.set true
    # @register_page.select 'Ukrainian (Українська)', from: 'Language'
    # @register_page.submit_btn.click
    #
    # sleep(5)
  end
end
