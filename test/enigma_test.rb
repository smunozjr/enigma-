# require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_single_letter
    enigma = Enigma.new

    result = enigma.encrypt_single("h", 1)

    assert_equal "i", result

  end

  def test_captial_letter
    enigma = Enigma.new

    result = enigma.encrypt("H", 1)

    assert_equal "i", result
  end

  def test_two_offsets
    enigma = Enigma.new

    result = enigma.encrypt("he", [4, 5])

    assert_equal "lj", result
  end

  def test_four_offsets
    enigma = Enigma.new

    result = enigma.encrypt("hhhh", [4, 5, 6 , 7])

    assert_equal "lmno", result
  end




  # def test_enigma_character_map
  #   enigma = Enigma.new
  #
  #   result = enigma.character_map[19]
  #
  #   assert_equal "t", result
  # end
  #
  # def test_encrypt_single_letter
  #   enigma = Enigma.new
  #
  #   result = enigma.encrypt("t", 41521)
  #   expected = "2"
  #
  #   assert_equal expected, result
  # end
  #
  # def test_two_letters
  #   enigma = Enigma.new
  #
  #   result = enigma.encrypt("ty", 41521)
  #   expected = "2f"
  #
  #   assert_equal expected, result
  # end
  #
  # def test_four_letters
  #   enigma = Enigma.new
  #
  #   result = enigma.encrypt("tyle", 41521)
  #   expected = "2f03"
  #
  #   assert_equal expected, result
  # end
  #
  # def test_for_five_letters
  #   enigma = Enigma.new
  #
  #   result = enigma.encrypt("tyle")
  #   expected = "2f030"
  #   assert_equal expected, result
  # end



end
