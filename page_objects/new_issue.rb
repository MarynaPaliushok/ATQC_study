class NewIssue < SitePrism::Page
  set_url 'http://192.168.56.101/issues/new'

  element :subject_field, '#issue_subject'
  element :create_btn, '#issue-form > input[type=submit]:nth-child(4)'
end