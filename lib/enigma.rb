require './lib/rotator'

require 'pry'

class Enigma

  def initialize
    @rotator = []
  end

  def encryption(offset)
    character_map = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                        "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                        "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
                        "4", "5", "6", "7", "8", "9", " ", ".", ","]
    offset_map = character_map.rotate(offset)
    Hash[character_map.zip(offset_map)]
  end

  def encrypt_single(letter, offset)
    cipher = encryption(offset)
    cipher[letter]
  end

  def encrypt(string, offset)



    letters = []
    letters = string.to_s.downcase.split("")
    output = []
    count = 0
    letters.map do |letter|
      if count == 4
        count = 0
      end
      encrypted_letter = encrypt_single(letter, offset[count])
      count += 1
      output.push(encrypted_letter)
    end

 output.join
 end

 #  def encrypt(string, key=41521, date=Date.today)
 #    rotation_keys = []
 #    @rotator = Rotator.new.rotation_sequence(key, date)
 #    offset = @rotator[0]
 #
 #    letters = string.to_s.downcase.split("")
 #
 #    output = []
 #    letters.map do |letter|
 #      encrypted_letter = encrypt_single(letter, offset)
 #      output.push(encrypted_letter)
 #    end
 #
 # output.join
 # end


  # def encrypt(@input_arr)
  #
  #   results = []
  #   count = 0
  #   @input_arr.each do |letter|
  #     if count == 4
  #       count = 0
  #     end
  #     local_map = @character_map
  #     rotated_map = local_map.rotate(rotation_sequence[count])
  #     cipher = local_map.zip(rotated_map)
  #     ciph_hash[cipher]
  #   end
  #
  #   results.join
  # end

end




# class Enigma
#   attr_reader :character_map
#
#   def initialize
#       @character_map = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
#                         "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
#                         "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
#                         "4", "5", "6", "7", "8", "9", " ", ".", ","]
#   end
#
#   def encrypt(string, key)
#     output_arr = []
#     count = 0
#     rotator = Rotator.new(key)
#     string.to_s.chars.map do |letter|
#       if count == 4
#         count = 0
#       end
#       index_value = @character_map.index(letter)
#       encr_index = (index_value + rotator.rotation_sequence[count]) % 39
#       count += 1
#       output_arr << @character_map[encr_index]
#     end
#       output_arr.join
#   end
#
#   # def encrypt(string)
#   #   #We need to create an until loop to iterate from count 3 back to count 0
#   #   count = 0
#   #   date = DateOffset.new
#   #   letters = string.split("")
#   #   letters.map do |letter|
#   #     index_value_t = @character_map.index(letter)
#   #     encr_index_t = (index_value_t + date.rotation_sequence[count]) % 39
#   #     count += 1
#   #     @character_map[encr_index_t]
#   #   end.join
#   # end
# end
