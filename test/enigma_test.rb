require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end



  # def test_offset_method_exists
  #   enigma = Enigma.new
  #
  #   assert_equal 40218, enigma.formatted_date
  # end
  #
  # def test_offset_squared
  #   enigma = Enigma.new
  #   enigma.date_formatter(Time.now)
  #   assert_equal 1617487524, enigma.date_squared
  # end

  # def test_default_for_offset_method
  #   enigma = Enigma.new
  #
  #   expected = 40218
  #   result =
  #
  #   assert
  # end


end
