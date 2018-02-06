require './lib/offset'
require './lib/key'
require 'Date'

require 'pry'


class Rotator
  def initialize(key=rand(10000..99999), date=Date.today)
    @key = Key.new(key)
    @offset = DateOffset.new(date).date_squared
    @rotation = []
  end

  def rotation_sequence
    sum_a = @key.offset[0] + @offset[0]
    sum_b = @key.offset[1] + @offset[1]
    sum_c = @key.offset[2] + @offset[2]
    sum_d = @key.offset[3] + @offset[3]
    @rotation << sum_a
    @rotation << sum_b
    @rotation << sum_c
    @rotation << sum_d
  end


end
