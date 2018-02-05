require './lib/offset'
require './lib/key'

require 'pry'

class Enigma
  attr_reader :character_map

  def initialize
      @character_map = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                        "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                        "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
                        "4", "5", "6", "7", "8", "9", " ", ".", ","]
  end

  def encrypt(string)
    output_arr = []
    count = 0
    date = DateOffset.new
    string.to_s.chars.map do |letter|
      if count == 4
        count = 0
      end
      index_value = @character_map.index(letter)
      encr_index = (index_value + date.rotation_sequence[count]) % 39
      count += 1
      output_arr << @character_map[encr_index]
    end
      output_arr.join
  end

  # def encrypt(string)
  #   #We need to create an until loop to iterate from count 3 back to count 0
  #   count = 0
  #   date = DateOffset.new
  #   letters = string.split("")
  #   letters.map do |letter|
  #     index_value_t = @character_map.index(letter)
  #     encr_index_t = (index_value_t + date.rotation_sequence[count]) % 39
  #     count += 1
  #     @character_map[encr_index_t]
  #   end.join
  # end
end
