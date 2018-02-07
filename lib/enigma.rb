require './lib/rotator'
require 'Date'
require 'pry'

class Enigma
  # attr_reader :key

  # def initialize
  #   @key = ""
  # end
  def key
    @key
  end

  def date
    @date
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

  def encrypt(string, key=rand(10000..99999), date=Date.today)
    @key = key
    @date = date
    rotator = Rotator.new
    offset = rotator.rotation_sequence(key, date)
    letters = string.to_s.downcase.split("")
    count = 0
    letters.map do |letter|
      if count == 4
        count = 0
      end
      encrypted_letter = encrypt_single(letter, offset[count])
      count += 1
      encrypted_letter
    end.join
  end

  def decrypt_single(letter, offset)
    cipher = encryption(offset).invert
    cipher[letter]
  end

  def decrypt(string, key, date)
    @key = key
    @date = date
    rotator = Rotator.new
    offset = rotator.rotation_sequence(key, date)
    letters = string.to_s.downcase.split("")
    count = 0
    decryption = letters.map do |letter|
      if count == 4
        count = 0
      end
      encrypted_letter = decrypt_single(letter, offset[count])
      count += 1
      encrypted_letter
    end.join
    "#{decryption} ..end.."
  end
end
