# feature 'the sigh_in process', js: true do
#   scenario 'sighs me in' do
#     @login_page = LoginPage.new
#     @login_page.load
#
#     login_user 'user'
#
#     expect(page).to have_content 'Logged in as user'
#
#     sleep (2)
#
#     # visit 'http://192.168.56.101'
#     # click_link 'Sign in'
#     # @login_page.sign_in_btn.click
#     # expect(current_url).to include '/login'
#     # sleep(2)
#     #  # fill_in 'Email', with: 'user@example.com'
#     # @login_page.email_field.set 'user'
#     #  # fill_in 'Password', with: 'password'
#     # @login_page.password.set '8jAuQrKd4pyL'
#     # sleep(2)
#     # @login_page.log_in_btn.click
#
#   end
# end
