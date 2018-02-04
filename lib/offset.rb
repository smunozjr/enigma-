require 'pry'

class Key
  attr_reader :key,
              :key_offsets

  def initialize
    @key = rand(10000..99999)
    @key_offsets = []
  end

  def offset
    key_array = @key.digits.reverse
    @key_offsets << key_array[0..1].join.to_i
    @key_offsets << key_array[1..2].join.to_i
    @key_offsets << key_array[2..3].join.to_i
    @key_offsets << key_array[3..4].join.to_i
  end

end

class DateOffset
    attr_reader :date

  def initialize
    @date = Time.now
  end


  def date_formatter
    formatted_date_arr = []
    year = ""
    date_to_string = ""

    date_to_string = date.to_s
    date_to_string = date_to_string.split[0]

    formatted_date_arr << date_to_string.split("-")[2]
    formatted_date_arr << date_to_string.split("-")[1]
    year = date_to_string.split("-")[0]
    year = year.chars.join
    year = year.slice(2,2)
    formatted_date_arr << year

    formatted_date_arr.join.to_i
  end

  # def date_squared
  #
  #   formatted_date_arr = formatted_date_arr.join
  #   binding.pry
  #   year_squared = formatted_date_arr ** 2
  #   binding.pry
  #   offset_quared = year_squared.to_s.split
  #   binding.pry
  # end
end
