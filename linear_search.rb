# frozen_string_literal: true

def linear_search(numbers, value)
  numbers.each do |number|
    return numbers.index(number) if number == value
  end
  'None'
end

numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

p linear_search(numbers, 12)

p linear_search(numbers, 22)

p linear_search(numbers, -2)
