require 'capybara'
require 'capybara/cucumber'
require 'headless'
require 'imatcher'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
#require 'rspec/retry'

#Capybara.configure do |config|
    #config.default_driver = :selenium
#end

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "--start-maximized", "--disable-infobars" ]
      }
    )
  )
end

Capybara.ignore_hidden_elements = false
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 15

Capybara.app_host = "https://neon.com.br/"

IMATCHER = Imatcher::Matcher.new threshold: 0.00