require 'watir-webdriver'
require_all 'lib'

Given(/^I am on jQuery Calendar page using (.+)$/) do |browser|
  @browser = Watir::Browser.new :firefox
  @page = JQueryDatePickerPage.new @browser
  @page.open
end

When(/^I pick (.+), (.+), (.+) from a datepicker$/) do |month, day, year|
  @page.pick month, day, year
end

Then(/^datepicker result is (.+)$/) do |date|
  expect(@page.date).to eql date
  @browser.quit
end