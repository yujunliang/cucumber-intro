class MonthFlipper

  def self.flip(calendar, flipTo)
    date_monthnames_index = Date::MONTHNAMES.index(flipTo)
    if date_monthnames_index == nil
      date_monthnames_index = Date::ABBR_MONTHNAMES.index(flipTo)
    end
    difference = Date::MONTHNAMES.index(calendar.month) - date_monthnames_index
    if (difference < 0)
      i = difference
      until i ==0 do
        calendar.nextMonth
        i +=1
      end
    else
      if (difference > 0)
        i = 0
        until i == difference do
          calendar.prevMonth
          i +=1
        end
      end
    end
  end

end