class YearFlipper

  def self.flip(calendar, flipTo)
    difference = calendar.year.to_i - flipTo.to_i
    if (difference < 0)
      i = difference
      until i ==0 do
        calendar.nextYear
        i +=1
      end
    else
      if (difference > 0)
        i = 0
        until i == difference do
          calendar.prevYear
          i +=1
        end
      end
    end
  end

end