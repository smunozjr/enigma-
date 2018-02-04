require 'pry'

class Enigma
  attr_reader :formatted_date,
              :date_squared

  def initialize
    @offset_key_a = nil
    @key_offsets = []
    @formatted_date = 40218
    @date_squared = 1617487524
  end

  def date_formatter(date)
    formatted_date_arr = []
    offset_squared = ""
    binding.pry
    formatted_year = "2000"
    binding.pry
    date_to_string = (date).to_s.split[0]
    binding.pry
    formatted_date_arr << date_to_string.split("-")[2]
    binding.pry
    formatted_date_arr << date_to_string.split("-")[1]
    formatted_year = date_to_string.split("-")[0] - formatted_year
    binding.pry
    #need to turn 2018 into 18
    formatted_date_arr << formatted_year
    binding.pry
    formatted_date_arr = formatted_date_arr.join
    binding.pry
    year_squared = formatted_date_arr ** 2
    binding.pry
    offset_quared = year_squared.to_s.split
    binding.pry
  end








end
