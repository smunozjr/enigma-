require_relative 'helper_test'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset = Offset.new

    assert_instance_of Offset, offset
  end

  def test_date_offset
    offset = Offset.new
    offset.date_formatter

    assert_instance_of Offset, offset
  end

  def test_date_squared_split
    offset = Offset.new
    result = offset.date_squared

    assert_equal [7,5,2,4], result
  end

  def test_takes_an_arguement
    offset = Offset.new
    offset.date_formatter(30415)

    assert_instance_of Offset, offset
  end

  def test_date_squared
    offset = Offset.new
    result = offset.date_squared.count

    assert_equal 4, result
  end

  def test_last_four_date_squared
    offset = Offset.new
    result = offset.date_squared("030415")
    expected = [2, 2, 2, 5]

    assert_equal expected, result
  end
end
