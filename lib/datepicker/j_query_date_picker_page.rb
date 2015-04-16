require 'watir-webdriver'
require 'page-object'

class JQueryDatePickerPage
  include PageObject

  page_url  "http://jqueryui.com/resources/demos/datepicker/default.html"

  def open
    goto
  end

  def pick(month, day, year)
    @calendar = Calendar.new(@browser)
    @datepicker = Datepicker.new(@calendar)
    @datepicker.pick(month, day, year)
  end

  def date
    @calendar.date
  end

end