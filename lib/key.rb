require 'pry'

class Key
  attr_reader :key,
              :key_offsets

  def initialize
    @key = key
    @key_offsets = []
  end

  def random_key(key = rand(10000..99999))
    key_index = key.digits.reverse
    @key_offsets << key_index[0..1].join.to_i
    @key_offsets << key_index[1..2].join.to_i
    @key_offsets << key_index[2..3].join.to_i
    @key_offsets << key_index[3..4].join.to_i
  end
end
