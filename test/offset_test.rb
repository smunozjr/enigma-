require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require 'pry'

class OffsetTest < Minitest::Test

  def test_date_uses_current_date_as_arg
    date_offset = DateOffset.new
    date_offset.date_formatter

    assert_instance_of DateOffset, date_offset
  end

  def test_takes_an_arguement
    offset = DateOffset.new

    offset.date_formatter(30415)

    assert_instance_of DateOffset, offset
  end

  def test_date_squared
    offset = DateOffset.new
    result = offset.date_squared.count

    assert_equal 4, result
  end

  def test_date_arr_from_arv
    offset = DateOffset.new

    result = offset.date_squared("030415")
    expected = [2, 2, 2, 5]

    assert_equal expected, result
  end

end
