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
    expected = (10000...99999).to_a

    assert_includes expected, result
  end

  def test_key_offsets_count
    enigma = Enigma.new

    enigma.key_offset

    assert_equal 4, enigma.key_offsets.length

  end


end
