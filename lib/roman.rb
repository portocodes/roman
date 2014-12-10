require "roman/version"

class BadInputError < StandardError; end

class Roman
  def convert arabic_numeral
    raise BadInputError if arabic_numeral.zero?

    actually_converts arabic_numeral
  end

  private
  def actually_converts arabic
    case arabic
    when 0..3 then "I" * arabic
    when 4 then "IV"
    when 5..8 then five_to_eight(arabic)
    when 9 then "IX"
    when 40...50 then fourty_range(arabic)
    when 50...60 then fifty_range(arabic)
    when 90...100 then ninety_range(arabic)
    when ->(x) { x >= 10 } then ten_range(arabic)
    else
      raise BadInputError
    end
  end

  def five_to_eight arabic
    lalala "V", 5, arabic
  end

  def ten_range arabic
    lalala "X", 10, arabic
  end

  def fourty_range arabic
    lalala "XL", 40, arabic
  end

  def fifty_range arabic
    lalala "L", 50, arabic
  end

  def ninety_range arabic
    lalala "XC", 90, arabic
  end

  def lalala roman_base, arabic_base, arabic
    roman_base << actually_converts(arabic - arabic_base)
  end
end
