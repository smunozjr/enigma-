require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def test_key_exists
    key = Key.new

    assert_instance_of Key, key
  end

  def test_key_generator_exists
    key = Key.new

    assert key.key
  end

  def test_creation_of_random_number
    key = Key.new(41521)

    result = key.key
    expected = (10000...99999).to_a

    assert_includes expected, result
  end

  def test_key_count
    key = Key.new
    key.offset

    assert_equal 4, key.key_offsets.length
  end
end
