feature 'the signin process', js: true do
  scenario 'signs me in' do
    @login_page = LoginPage.new
    @login_page.load

    #visit 'http://192.168.56.101'
    # click_link 'Sign in'
    @login_page.sign_in_btn.click
    expect(current_url).to include '/login'
    sleep(2)
     # fill_in 'Email', with: 'user@example.com'
    @login_page.email_field.set 'user'
     # fill_in 'Password', with: 'password'
    @login_page.password.set '8jAuQrKd4pyL'
    sleep(2)
    @login_page.log_in_btn.click
    expect(page).to have_content 'Logged in as user'

  end
end
