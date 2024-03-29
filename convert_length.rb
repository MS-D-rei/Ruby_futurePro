# frozen_string_literal: true

# ruby convert_length.rb

UNITS = { m: 1.0, ft: 3.28, in: 39.37 }.freeze

def convert_length(length, from:, to:)
  (length / UNITS[from] * UNITS[to]).round(2)
end
