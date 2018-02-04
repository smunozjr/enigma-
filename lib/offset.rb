require 'pry'

class Key
  attr_reader :key,
              :key_offsets

  def initialize
    @key = 56789
    @key_offsets = []
  end

  # def random_key
  #   @key = rand(10000..99999)
  # end

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

  def date_squared
    squared = (date_formatter ** 2).to_s.split("")
    squared = squared.slice(6,4)
    squared = squared.map do |number|
      number.to_i
    end
  end

  def rotation_a
    key = Key.new.offset[0]
    sum_a = key + date_squared[0]
  end

  def rotation_b
    key = Key.new.offset[1]
    sum_b = key + date_squared[1]
  end

  def rotation_c
    key = Key.new.offset[2]
    sum_c = key + date_squared[2]
  end

  def rotation_d
    key = Key.new.offset[3]
    sum_d = key + date_squared[3]
  end


end
