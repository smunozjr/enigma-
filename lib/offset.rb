require 'Date'
require './lib/key'
require 'pry'

class DateOffset
    attr_reader :date

  def initialize
    @date = Date.today
    # @date = Time.now
    @rotation = []
  end

  def date_formatter
    formatted_date_arr = []
    date_to_string = date.to_s
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
    squared = squared.map do |number|
      number.to_i
    end
  end

  def rotation_sequence
    key = Key.new
    sum_a = key.offset[0] + date_squared[0]
    sum_b = key.offset[1] + date_squared[1]
    sum_c = key.offset[2] + date_squared[2]
    sum_d = key.offset[3] + date_squared[3]
    @rotation << sum_a
    @rotation << sum_b
    @rotation << sum_c
    @rotation << sum_d
  end
end
