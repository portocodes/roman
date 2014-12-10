require 'minitest/autorun'
require 'roman'

class RomanTest < Minitest::Test
  def convert_number arabic
    converter = Roman.new

    converter.convert arabic
  end

  def test_bad_input
    assert_raises(BadInputError) { convert_number 0 }
  end

  def test_converts_1
    roman = convert_number 1

    assert_equal "I", roman
  end

  def test_converts_2
    roman = convert_number 2

    assert_equal "II", roman
  end

  def test_converts_3
    roman = convert_number 3

    assert_equal "III", roman
  end

  def test_converts_4
    roman = convert_number 4

    assert_equal "IV", roman
  end

  def test_converts_5
    roman = convert_number 5

    assert_equal "V", roman
  end

end