class MembersPage < SitePrism::Page
  set_url 'http://192.168.56.101/projects/{project_name}/settings/members'

  element :new_member_btn, '#tab-content-members > p > a'
  element :search_field, '#principal_search'
  element :select_user, '##principals > label:nth-child(1) > input[type=checkbox]'
  element :select_role, '#new_membership > fieldset:nth-child(3) > div > label:nth-child(2) > input[type=checkbox]'
  element :add_btn, '#member-add-submit'
end

class IssueTracking < SitePrism::Page
  set_url 'http://192.168.56.101/projects/{project_name}/settings/issues'

  element :save_btn, :xpath, '(//*[@class="edit_project"])/p/input'
end
