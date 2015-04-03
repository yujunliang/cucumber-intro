Given(/^I am on jQuery Calendar page using (.+)$/) do |browser|
  puts browser
end

When(/^I pick (.+), (.+), (.+) from a datepicker$/) do |month, day, year|
  puts month + ' ' + day + ',' + year
end

Then(/^datepicker result is (.+)$/) do | date|
  puts date
end

Then(/^I close browser$/) do
  puts 'good'
end
