class CreateProject < SitePrism::Page
  set_url 'http://192.168.56.101/projects/new'
  element :project_name, '#project_name'
  element :submit_btn, '#new_project > input[type=submit]:nth-child(5)'
end