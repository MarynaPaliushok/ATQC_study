require 'capybara/cucumber'
require 'selenium/webdriver'
require 'site_prism'
require 'securerandom'
require 'require_all'
require 'rest-client'
require 'json'

require_all 'page_objects'
require_rel '../../modules/feature_helper'
require_rel '../../modules/api_calls'

def options
  Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1800,1000])
end
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

World(FeatureHelper)
World(ApiCalls)