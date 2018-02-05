require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class EnigmaTest < Minitest::Test

  def test_key_exists
    key = Key.new

    assert_instance_of Key, key
  end

  def test_key_generator_exists
    key = Key.new

    assert key.key
  end

  def test_creation_of_random_number
    key = Key.new

    result = key.key
    expected = (10000...99999).to_a

    assert_includes expected, result
  end

  def test_key_count
    key = Key.new
    key.offset

    assert_equal 4, key.key_offsets.length
  end

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

  def test_new_date_offset
    date = DateOffset.new

    result = date.rotation_sequence.count

    assert_equal 4, result
  end

end
