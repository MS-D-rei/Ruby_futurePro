# ruby p142_next.rb

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3, 4]
fruits.each do |fruit|
    numbers.each do |n|
        next if n.even?
        puts "#{fruit}: #{n}"
    end
end