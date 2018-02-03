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
  #
  # def offset_a
  #   key_array = @key_generator.digits
  #   a_array = []
  #   a_array << key_array[0..1]
  # end
  # def offset_b
  #   key_array = @key_generator.digits
  #   b_array = []
  #   b_array << key_array[1..2]
  #   @offset_key_b = b_array.join.to_i
  # end
  # def offset_c
  #   key_array = @key_generator.digits
  #   c_array = []
  #   c_array << key_array[2..3]
  #   @offset_key_c = c_array.join.to_i
  # end
  # def offset_d
  #   key_array = @key_generator.digits
  #   d_array = []
  #   d_array << key_array[1..2]
  #   @offset_key_d = d_array.join.to_i
  # end







end
