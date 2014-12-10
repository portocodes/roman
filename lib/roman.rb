require "roman/version"

class BadInputError < StandardError; end

class Roman
  def convert arabic_numeral
    case arabic_numeral
    when 1..3 then "I" * arabic_numeral
    when 4 then "IV"
    when 5 then "V"
    else
      raise BadInputError
    end
  end
end
