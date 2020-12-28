# ruby p139_catchthrow.rb

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]

catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |n|
            puts "#{fruit}: #{n}"
            if fruit == 'orange' && n == 3
                throw :done
            end
        end
    end
end

ret = catch :done do
    throw :done, '123' # return the second argument
end
puts ret