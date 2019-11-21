require 'securerandom'

feature 'registration of a new user', js: true do
  scenario 'register a new user' do

    unique_value = SecureRandom.uuid.to_s
    password = 'qwerty123'
    username = 'mpali_' + unique_value
    email = username + '@gmail.com'

    @register_page = RegisterPage.new
    @register_page.load

    @register_page.register_btn.click
    expect(page).to have_content 'Register'

    register_user(username, password, email)

    sleep(2)

    # @sigh_out_page = SighOut.new
    # @sigh_out_page.sigh_out_btn.click
    #
    # @login_page = LoginPage.new
    # @login_page.load
    #
    # login_user(username, password)
    #
    # expect(page).to have_content 'Logged in'
    #
    # sleep (2)

  end
end
