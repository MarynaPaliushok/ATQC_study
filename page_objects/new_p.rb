class NewP < SitePrism::Page
  set_url 'http://192.168.56.101/projects'
  element :new_btn, '#content > div.contextual > a'
end