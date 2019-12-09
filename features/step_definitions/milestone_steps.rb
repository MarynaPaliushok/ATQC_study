Given(/^I am not logged in visitor$/) do
  @register_page = RegisterPage.new
  @register_page.load
end

When(/^I register 'admin' user via Redmine 'UI'$/) do
  unique_value = SecureRandom.uuid.to_s
  @password = 'qwerty123'
  @username = 'admin' + unique_value
  @email = @username + '@gmail.com'
  register_user(@username, @password, @email)
  sleep(2)
end

Then(/^I see the 'admin' user is registered$/) do
  expect(page).to have_content 'My account'
  sleep(2)
  @sigh_out_page = SighOut.new
  @sigh_out_page.sigh_out_btn.click
end

And(/^I become logged in as 'admin' user$/) do
  @login_page = LoginPage.new
  @login_page.load

  login_user(@username, @password)
  expect(page).to have_content 'Logged in'
  sleep(2)
end

When(/^I create a project$/) do
  new_p
  sleep(2)
  expect(current_url).to include '/new'
  @project_name = 'project' + SecureRandom.uuid.to_s
  create_project(@project_name)
end

Then(/^I see that project is created on 'UI' level$/) do
  expect(page).to have_content 'Successful creation'
  issue_tracker(@project_name)
end

And(/^I see that project is created on 'API' level$/) do
  responce = RestClient.get 'http://192.168.56.101/projects.json'
  projects = JSON.parse(responce)['projects']
  project_exist = false
  projects.each do |project|
    # RestClient.delete "http://192.168.56.101/projects/" + project['id'].to_s + ".json",
    #                   'X-Redmine-API-Key' => 'f9639ae2a56ee7101206fa4e4dba86245e56b465'
    name = project['name']
    puts name
    if name.eql? @project_name
      project_exist = true
      break
    end
  end
  expect(project_exist).to eq(true)

  # project_exist = responce.to_s.include? @project_name
  # unless project_exist
  #   fail 'no such project: ' + @project_name
  # end
end

When(/^I register 'developer' user via Redmine 'API'$/) do
  @dev_username = 'developer' + DateTime.now.strftime('%Q')
  dev_email = @dev_username + '@gmail.com'
  dev_password = 'qwerty123'
  create_user_via_api(@dev_username, dev_email, dev_password)
end

Then(/^I see the 'developer' user is registered$/) do
  response = RestClient.get 'http://192.168.56.101/users.json?name=' + @dev_username,
  'X-Redmine-API-Key' => 'f9639ae2a56ee7101206fa4e4dba86245e56b465'

  unless response.to_s.include? @dev_username
    fail 'no such user: ' + @dev_username
  end
end

When(/^I add 'developer' user as a member of the project$/) do
  members_page(@project_name, @dev_username)
  sleep(2)
end

Then(/^I can can see 'developer' user in the project member list$/) do
  expect(page).to have_content @dev_username
  sleep(2)
  @sigh_out_page = SighOut.new
  @sigh_out_page.sigh_out_btn.click
end


When(/^I create an issue and assign 'developer' user to created issue$/) do
  @login_page = LoginPage.new
  @login_page.load

  login_user(@username, @password)

  subject_name = 'test_issue1'
  create_issue(subject_name)
  sleep(2)
end