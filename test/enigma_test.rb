require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  
  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_key_generator_exists
    enigma = Enigma.new

    assert enigma.key_generator
  end

  def test_creation_of_random_number
    enigma = Enigma.new

    result = enigma.key_generator
    expected = (10000...99999).to_a.sample

    assert_includes expected, result
  end

  def test_a_offset
    enigma = Enigma.new

    result = enigma.offset_a
    expected = (0..99).to_a

    assert_includes expected, result
  end



end
