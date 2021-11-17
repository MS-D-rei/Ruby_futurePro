# frozen_string_literal: true

# for test
# ruby test/fizz_buzz_test.rb

def fizz_buzz(number)
  if (number % 15).zero?
    'Fizz buzz'
  elsif (number % 3).zero?
    'Fizz'
  elsif (number % 5).zero?
    'Buzz'
  else
    number.to_s
  end
end

# puts fizz_buzz(1)
# puts fizz_buzz(2)
# puts fizz_buzz(3)
# puts fizz_buzz(5)
# puts fizz_buzz(15)
