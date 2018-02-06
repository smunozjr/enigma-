require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotator'

class RotatorTest < Minitest::Test

  # def test_date_offset_exists
  #   rotator = Rotator.new(41521)
  #
  #   assert_instance_of Rotator, rotator
  # end

  def test_new_date_offset
    rotator = Rotator.new(41521)

    result = rotator.rotation_sequence.count

    assert_equal 4, result
  end

end
