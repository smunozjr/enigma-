require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def test_key_exists
    key = Key.new

    assert_instance_of Key, key
  end

  def test_takes_arguement_for_key
    key = Key.new

    result = key.random_key(41521)
    expected = [41, 15, 52, 21]

    assert_equal expected, result
  end

  def test_random_key_count
    key = Key.new
    key.random_key

    assert_equal 4, key.key_offsets.length
  end
end
