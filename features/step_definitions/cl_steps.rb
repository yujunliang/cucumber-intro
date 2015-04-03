Given(/^I am on TicketFly home page using (.+)$/) do |browser|
  puts browser
end

When(/^I change the location to (.+) then (.+)$/) do |s1, s2|
  puts s1
  puts s2
end

Then(/^the default location is (.+)$/) do |location|
  puts location
end