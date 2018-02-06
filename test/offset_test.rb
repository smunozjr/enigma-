require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require 'pry'

class OffsetTest < Minitest::Test

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  def test_it_exists
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

    assert_equal 4, key.offset.count
  end

  def test_date_offset
    date_offset = DateOffset.new
    date_offset.date_formatter

    assert_instance_of DateOffset, date_offset
  end

  def test_date_squared_split
    date_offset = DateOffset.new
    result = date_offset.date_squared

    assert_equal [7,5,2,4], result
  end

  def test_rotation_starts_off_empty
    date = DateOffset.new
    result = date.rotation

    assert_equal [], result
  end
  def test_date_offset_exists
=======
  def test_date_uses_current_date_as_arg
>>>>>>> 78bb3423f056e0d80f71fa2b776a6b4070b284b4
=======
  def test_date_uses_current_date_as_arg
>>>>>>> c9d92a399a33d79ca6d2df82d11cd2c330112d41
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
