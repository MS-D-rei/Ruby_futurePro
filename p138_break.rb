# ruby p138_break.rb

numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
    puts n
    break if n == 5
end

i = 0
while i < numbers.size
    n = numbers[i]
    puts n
    break if n == 5
    i += 1
end