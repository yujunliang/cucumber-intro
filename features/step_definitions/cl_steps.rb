require 'yaml'
require 'watir-webdriver'
require_all 'lib'


Given(/^I am on TicketFly home page using (.+)$/) do |browser|
  config = YAML.load_file('data.yml')
  puts config['last_update']
  @browser = BrowserFactory.start browser
  @page = TicketflyHomePage.new @browser
  @page.open
end

When(/^I change the location to (.+) then (.+)$/) do |s1, s2|
  @page.change_location s1, s2
end

Then(/^the default location is (.+)$/) do |location|
  expect(@page.location).to eql location
  @browser.quit
end