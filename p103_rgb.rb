# frozen_string_literal: true

# ruby p103_rgb.rb

def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map(&:hex)
end

puts to_hex(50, 40, 40) # '#322828'
p to_ints('#ffffff') # [255, 255, 255]
