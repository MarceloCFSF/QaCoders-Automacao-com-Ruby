require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

require_relative 'helper.rb'

ENVIRONMENT = ENV['ENVIRONMENT']
puts "Ambiente >> #{ENVIRONMENT}"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")

world(Helper)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['url_default']
  config.default_max_wait_time = 10
end