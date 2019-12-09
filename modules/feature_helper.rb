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

  def new_p
    new_project_page = NewP.new
    new_project_page.load
    sleep(2)
    new_project_page.new_btn.click
  end

  def create_project(project_name)
    create_project_page = CreateProject.new
    create_project_page.load
    sleep(2)
    create_project_page.project_name.set project_name
    create_project_page.submit_btn.click
  end

  def members_page(project_name, developer_username)
    members_page = MembersPage.new
    members_page.load(project_name: project_name)
    sleep(2)
    members_page.new_member_btn.click
    sleep(2)
    members_page.search_field.set developer_username
    sleep(2)
    members_page.check developer_username
    members_page.check 'Developer'
    sleep(2)
    members_page.add_btn.click
    sleep(2)
  end

  def issue_tracker(project_name)
    issue_tracker_page = IssueTracking.new
    issue_tracker_page.load(project_name: project_name)
    issue_tracker_page.check 'Bug'
    issue_tracker_page.check 'Feature'
    issue_tracker_page.check 'Support'
    issue_tracker_page.save_btn.click
  end

  def create_issue(subject_name)
    create_issue_page = NewIssue.new
    create_issue_page.load
    create_issue_page.subject_field.set subject_name
    create_issue_page.create_btn.click
  end

end