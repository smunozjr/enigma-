require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_date_offset_exists
    date_offset = DateOffset.new
    date_offset.date_formatter

    assert_instance_of DateOffset, date_offset
  end

  def test_date_squared
    date_offset = DateOffset.new
    result = date_offset.date_squared.count

    assert_equal 4, result

  end

end
