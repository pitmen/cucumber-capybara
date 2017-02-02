require "capybara/cucumber"
require "selenium-webdriver"

#Capybara.default_driver = :selenium


Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = 'https://www.walmart.com.br/' # change url
end