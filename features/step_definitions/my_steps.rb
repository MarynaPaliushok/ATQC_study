# Given(/^I see log in page$/) do
#   @login_page = LoginPage.new
#   @login_page.load
#   sleep(2)
# end
#
# When(/^I fill login form with valid credentials$/) do
#   login_user('user', '8jAuQrKd4pyL')
# end
#
# Then(/^I become logged in user$/) do
#   expect(page).to have_content 'Logged in'
#   sleep(2)
# end
#
# Given(/^Registration page is successfuly loaded$/) do
#   @register_page = RegisterPage.new
#   @register_page.load
# end
#
# When(/^I filled all required fields with valid data$/) do
#   unique_value = SecureRandom.uuid.to_s
#   password = 'qwerty123'
#   username = 'mpali_' + unique_value
#   email = username + '@gmail.com'
#   register_user(username, password, email)
#   sleep(2)
#
# end
#
# Then(/^I become registrated user$/) do
#   expect(page).to have_content 'My account'
#   sleep(2)
# end
#
#
# Given(/^Registration via API$/) do
#   username = 'myTestLogin' + SecureRandom.uuid.to_s
#   email = username + '@gmail.com'
#   password = 'qwerty123'
#   create_user_via_api(username, email, password)
# end