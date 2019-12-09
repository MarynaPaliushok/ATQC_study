# frozen_string_literal: true

require 'net/https'
require 'uri'
require 'json'
require 'rest-client'

module ApiCalls
  def create_user_via_api(login, mail, password)
    puts "from Creat user:"
    puts "login: " + login +"\nmail: " + mail + "\npassword: " + password
    user = {
        'user' => {
            'login' => login,
            'firstname' => login,
            'lastname' => 'Lang',
            'mail' => mail,
            'password' => password
        }
    }.to_json

    RestClient.post 'http://192.168.56.101/users.json', user,
         content_type: :json, 'X-Redmine-API-Key' => 'f9639ae2a56ee7101206fa4e4dba86245e56b465'
  end
end


