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
    "V" << actually_converts(arabic - 5)
  end

  def ten_range arabic
    "X" << actually_converts(arabic - 10)
  end

  def fourty_range arabic
    "XL" << actually_converts(arabic - 40)
  end

  def fifty_range arabic
    "L" << actually_converts(arabic - 50)
  end

  def ninety_range arabic
    "XC" << actually_converts(arabic - 90)
  end
end
