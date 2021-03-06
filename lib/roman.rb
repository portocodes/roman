require "roman/version"

class BadInputError < StandardError; end

class Roman
  def convert arabic_numeral
    arabic = Integer(arabic_numeral)
    raise BadInputError if arabic.zero?

    actually_converts arabic
  end

  private
  def actually_converts arabic
    case arabic
    when 0 then ""
    when 1...4 then lalala("I", 1, arabic)
    when 4 then "IV"
    when 5...9 then lalala("V", 5, arabic)
    when 9 then "IX"
    when 10...40 then lalala("X", 10, arabic)
    when 40...50 then lalala("XL", 40, arabic)
    when 50...90 then lalala("L", 50, arabic)
    when 90...100 then lalala("XC", 90, arabic)
    else
      lalala("C", 100, arabic)
    end
  end

  def lalala roman_base, arabic_base, arabic
    roman_base << actually_converts(arabic - arabic_base)
  end
end
