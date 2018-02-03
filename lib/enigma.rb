require 'pry'

class Enigma
  attr_reader :key_offsets

  def initialize
    @key_generator = key_generator
    @offset_key_a = nil
    @key_offsets = []
  end

  def key_generator
    @key_generator = rand(10000..99999)
  end

  def key_offset
    key_array = @key_generator.digits.reverse
    @key_offsets << key_array[0..1].join.to_i
    @key_offsets << key_array[1..2].join.to_i
    @key_offsets << key_array[2..3].join.to_i
    @key_offsets << key_array[3..4].join.to_i
  end








end
