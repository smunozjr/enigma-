require_relative 'helper_test'
require './lib/rotator'

class RotatorTest < Minitest::Test

  def test_date_offset_exists
    rotator = Rotator.new

    assert_instance_of Rotator, rotator
  end

  def test_new_date_offset
    rotator = Rotator.new
    result = rotator.rotation_sequence.count

    assert_equal 4, result
  end

  def test_pass_arguements
    rotator = Rotator.new
    result = rotator.rotation_sequence(41521, "030415")
    expected = [43, 17, 54, 26]

    assert_equal expected, result
  end

end
