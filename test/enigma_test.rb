require_relative 'helper_test'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_single_letter
    enigma = Enigma.new
    result = enigma.encrypt_single("h", 1)

    assert_equal "i", result

  end

  def test_captial_letter
    enigma = Enigma.new
    result = enigma.encrypt("H", 1)

    assert_equal "i", result
  end

  def test_two_offsets
    enigma = Enigma.new
    result = enigma.encrypt("he", [4, 5])

    assert_equal "lj", result
  end

  def test_four_offsets
    enigma = Enigma.new
    result = enigma.encrypt("hhhh", [4, 5, 6 , 7])

    assert_equal "lmno", result
  end

  def test_five_letters
    enigma = Enigma.new
    result = enigma.encrypt("hhhhh", [4, 5, 6 , 7])

    assert_equal "lmnol", result
  end

  def test_single_letter
    enigma = Enigma.new
    result = enigma.encrypt_single("h", 1)

    assert_equal "i", result

  end

  def test_captial_letter
    enigma = Enigma.new
    result = enigma.encrypt("H", 41521, "030415")

    assert_equal "l", result
  end

  def test_two_offsets
    enigma = Enigma.new
    result = enigma.encrypt("he", 41521, "030415")

    assert_equal "lv", result
  end

  def test_four_offsets
    enigma = Enigma.new
    result = enigma.encrypt("hello", 41521, "030415")

    assert_equal "lv0.s", result
  end

  def test_five_letters
    enigma = Enigma.new
    result = enigma.encrypt("hhhhh", 41521, "030415")

    assert_equal "lyw7l", result
  end

  def test_non_string_input
    enigma = Enigma.new
    result = enigma.encrypt(52, 41521, "030415")

    assert_equal "9g", result
  end

  def test_decrypt_two_letters
    enigma = Enigma.new
    result = enigma.decrypt("9g", 41521, "030415")

    assert_equal "52 ..end..", result
  end

  def test_decrypt_one_word
    enigma = Enigma.new
    result = enigma.decrypt("lv0.s", 41521, "030415")

    assert_equal "hello ..end..", result
  end

  def test_pull_out_key_from_encrypt
    enigma = Enigma.new
    enigma.encrypt("hello", 41521)

    actual = enigma.key
    expected = 41521

    assert_equal expected, actual
  end

  def test_pull_out_date_from_encrypt
    enigma = Enigma.new
    enigma.encrypt("hello", 41521, "030415")

    actual = enigma.date
    expected = "030415"

    assert_equal expected, actual
  end

  def test_pull_out_key_from_decrypt
    enigma = Enigma.new
    enigma.decrypt("hello", 41521, "030415")
    actual = enigma.key
    expected = 41521

    assert_equal expected, actual
  end

  def test_pull_out_date_from_decrypt
    enigma = Enigma.new
    enigma.decrypt("hello", 41521, "030415")

    actual = enigma.date
    expected = "030415"

    assert_equal expected, actual
  end
end
