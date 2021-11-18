# frozen_string_literal: true

# ruby p139_catchthrow.rb

fruits = %w[apple melon orange]
numbers = [1, 2, 3]

catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}: #{n}"
      throw :done if fruit == 'orange' && n == 3
    end
  end
end

# 'catch :symbol do throw :symbol end' can use without loop

ret = catch :done do
  throw :done, '123' # return the second argument
end
puts ret
