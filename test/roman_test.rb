require 'minitest/autorun'
require 'roman'

class RomanTest < Minitest::Test

  def test_converts_1
    converter = Roman.new
    roman = converter.convert 1

    assert_equal "I", roman
  end

  def test_converts_2
    converter = Roman.new
    roman = converter.convert 2

    assert_equal "II", roman
  end

  def test_converts_3
    converter = Roman.new
    roman = converter.convert 3

    assert_equal "III", roman
  end
end