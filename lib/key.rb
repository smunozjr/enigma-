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
