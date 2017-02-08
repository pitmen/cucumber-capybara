require "capybara/cucumber"
require "selenium-webdriver"
require 'logger'
require 'site_prism'

#Capybara.default_driver = :selenium


Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = 'https://www.google.com.br/' # change url
  $logger = Logger.new('C:/automacao/test.log', 'monthly')  
end