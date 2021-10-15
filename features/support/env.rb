require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

require_relative 'helper.rb'

world(Helper)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG('https://qacoders-dev-br.umbler.net/')
  config.default_max_wait_time = 10
end