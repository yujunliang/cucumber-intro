require 'watir-webdriver'
require 'page-object'

class TicketflyHomePage
  include PageObject

  page_url "http://www.ticketfly.com"

  def open
    goto
  end

  def change_location country, location
    browser.element(:text => 'change location').click
    sleep 1
    browser.element(:text => country).element(:tag_name => 'a').click
    sleep 1
    browser.element(:text => location).element(:tag_name => 'a').click
  end

  def location
    browser.element(:class => 'tools-location').element(:tag_name => 'a').element(:tag_name => 'strong').text
  end

end