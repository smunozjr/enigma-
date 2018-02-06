require './lib/offset'
require './lib/key'
require 'Date'

require 'pry'


class Rotator
  def initialize
    @rotation = []
  end

  def rotation_sequence(key=rand(10000..99999), date=Date.today)
    key1 = Key.new
    offset = DateOffset.new
    require "pry"; binding.pry
    sum_a = key1.random_key(key)[0] + offset.date_squared(date)[0]
    sum_b = key1.random_key(key)[1] + offset.date_squared(date)[1]
    sum_c = key1.random_key(key)[2] + offset.date_squared(date)[2]
    sum_d = key1.random_key(key)[3] + offset.date_squared(date)[3]
    @rotation << sum_a
    @rotation << sum_b
    @rotation << sum_c
    @rotation << sum_d
  end
end
