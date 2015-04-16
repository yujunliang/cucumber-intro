class Datepicker

  def initialize(calendar)
    @calendar = calendar
  end

  def pick(month, day, year)
    @calendar.show
    @calendar.pickYear(year)
    @calendar.pickMonth(month)
    @calendar.pickDay(day)
  end

end