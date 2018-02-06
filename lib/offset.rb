require 'Date'
require './lib/key'
require 'pry'


class DateOffset

  def initialize(date = Date.today)
    @date = date
  end

  def date_formatter
    formatted_date_arr = []
    date_to_string = @date.to_s
    formatted_date_arr << date_to_string.split("-")[2]
    formatted_date_arr << date_to_string.split("-")[1]
    year = date_to_string.split("-")[0]
    year = year.chars.join
    year = year.slice(2,2)
    formatted_date_arr << year
    formatted_date_arr.join.to_i
  end

  def date_squared
    squared = (date_formatter ** 2).to_s.split("")
    squared = squared.slice(6,4)
    squared.map do |number|
      number.to_i
    end
  end
end
