require 'Date'

class Offset
  def date_formatter(date=Date.today)
    formatted_date = []
    date_to_string = date.to_s
    if date_to_string.include?("-")
      formatted_date << date_to_string.split("-")[2]
      formatted_date << date_to_string.split("-")[1]
      year = date_to_string.split("-")[0]
      year = year.chars.join
      year = year.slice(2,2)
      formatted_date << year
      formatted_date = formatted_date.join.to_i
    else
      formatted_date = date_to_string.to_i
    end
  end

  def date_squared(date=Date.today)
    squared = (date_formatter(date) ** 2).to_s.split("")
    squared = squared.slice(-4, 4)
    squared.map do |number|
      number.to_i
    end
  end
end
