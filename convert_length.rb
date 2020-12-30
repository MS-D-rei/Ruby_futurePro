# ruby convert_length.rb

UNITS = { m: 1.0, ft: 3.28, in: 39.37 }
def convert_length(length, from:, to:)
    units = { m: 1.0, ft: 3.28, in: 39.37 }
    (length / UNITS[from] * UNITS[to]).round(2)
end