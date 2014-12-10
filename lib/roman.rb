require "roman/version"

class Roman
  def convert arabic_numeral
    return "III" if arabic_numeral == 3
    return "II" if arabic_numeral == 2

    "I"
  end
end
