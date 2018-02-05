require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_enigma_character_map
    enigma = Enigma.new

    result = enigma.character_map[19]

    assert_equal "t", result
  end

  def test_encrypt_single_letter
    enigma = Enigma.new

    result = enigma.encrypt("t")
    expected = "2"

    assert_equal expected, result
  end

  def test_two_letters
    enigma = Enigma.new

    result = enigma.encrypt("ty")
    expected = "2f"

    assert_equal expected, result
  end

  def test_four_letters
    enigma = Enigma.new

    result = enigma.encrypt("tyle")
    expected = "2f03"

    assert_equal expected, result
  end

end
