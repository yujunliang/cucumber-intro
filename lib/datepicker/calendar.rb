require 'page-object'
require 'watir-webdriver'

class Calendar
  include PageObject

  def show
    browser.text_field(:id => 'datepicker').click
  end

  def pickYear(year)
    YearFlipper.flip(self, year)
  end

  def pickMonth(month)
    MonthFlipper.flip(self, month)
  end

  def pickDay(day)
    element = browser.element(:xpath => '//*[@id="ui-datepicker-div"]')
    element.element(:text => day).click
  end

  def year
    browser.span(:xpath => '//*[@id="ui-datepicker-div"]/div/div/span[2]').text
  end

  def month
    browser.span(:xpath => '//*[@id="ui-datepicker-div"]/div/div/span[1]').text
  end

  def date
    browser.text_field(:id => 'datepicker').value
  end

  def prevYear
    i = 0
    until i == 12 do
      prevMonth
      i = i+1
    end
  end

  def prevMonth
    browser.span(:xpath => '//*[@id="ui-datepicker-div"]/div/a[1]/span').click
  end

  def nextYear
    i = 0
    until i == 12 do
      nextMonth
    end
  end

  def nextMonth
    browser.span(:xpath => '//*[@id="ui-datepicker-div"]/div/a[2]/span').click
  end

end