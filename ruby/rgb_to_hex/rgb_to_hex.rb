# frozen_string_literal: true

def rgb(red, green, blue)
  return '' if red.nil? || green.nil? || blue.nil?

  red = convert(red)
  green = convert(green)
  blue = convert(blue)

  "#{red}#{green}#{blue}"
end

def convert(value)
  value = 0 if value.negative?

  value = 255 if value > 255

  value.to_s(16).rjust(2, '0').upcase
end
