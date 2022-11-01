require "selenium-webdriver"

#Explicit wait definition
def wait_for
    Selenium::WebDriver::Wait.new(:timeout => 10).until {yield}
end