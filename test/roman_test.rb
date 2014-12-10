require 'minitest/autorun'
require 'roman'

class RomanTest < Minitest::Test
  def convert_number arabic
    converter = Roman.new

    converter.convert arabic
  end

  def test_zero_input
    assert_raises(BadInputError) { convert_number 0 }
  end

  def test_bad_input
    assert_raises(ArgumentError) { convert_number "LOL" }
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

  def test_converts_6
    roman = convert_number 6

    assert_equal "VI", roman
  end

  def test_converts_7
    roman = convert_number 7

    assert_equal "VII", roman
  end

  def test_converts_8
    roman = convert_number 8

    assert_equal "VIII", roman
  end

  def test_converts_9
    roman = convert_number 9

    assert_equal "IX", roman
  end

  def test_converts_10
    roman = convert_number 10

    assert_equal "X", roman
  end

  def test_converts_10_range
    {11 => "XI", 12 => "XII", 14 => "XIV", 15 => "XV", 19 => "XIX"}.each do |arabic, roman|
      assert_equal roman, convert_number(arabic)
    end
  end

  def test_converts_20
    roman = convert_number 20

    assert_equal "XX", roman
  end

  def test_converts_40
    roman = convert_number 40

    assert_equal "XL", roman
  end

  def test_converts_40_range
    {41 => "XLI", 42 => "XLII", 44 => "XLIV", 45 => "XLV", 49 => "XLIX"}.each do |arabic, roman|
      assert_equal roman, convert_number(arabic)
    end
  end

  def test_converts_50
    roman = convert_number 50

    assert_equal "L", roman
  end

  def test_converts_50_range
    {51 => "LI", 52 => "LII", 54 => "LIV", 55 => "LV", 59 => "LIX"}.each do |arabic, roman|
      assert_equal roman, convert_number(arabic)
    end
  end

  def test_converts_90
    roman = convert_number 90

    assert_equal "XC", roman
  end

  def test_converts_90_range
    {91 => "XCI", 92 => "XCII", 94 => "XCIV", 95 => "XCV", 99 => "XCIX"}.each do |arabic, roman|
      assert_equal roman, convert_number(arabic)
    end
  end

  def test_converts_100
    roman = convert_number 100

    assert_equal "C", roman
  end

  def test_converts_100_range
    {101 => "CI", 102 => "CII", 104 => "CIV", 105 => "CV", 109 => "CIX"}.each do |arabic, roman|
      assert_equal roman, convert_number(arabic)
    end
  end
end