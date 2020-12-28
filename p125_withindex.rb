# ruby p125_withindex.rb

a = ['a', 'b', 'c']
a.each_with_index do |value, index|
    puts "#{index}: #{value}"
end

p a.map.with_index(1) { |value, index| "#{index}: #{value}" } # => ["1: a", "2: b", "3: c"]

fruits = ['apple', 'orange', 'lemon']
fruits.delete_if.with_index { |value, index| value.include?('a') && index.odd? }
p fruits # => ["apple", "lemon"]

dimension = [
    [10, 20],
    [30, 40],
    [50, 60]
]
areas = []
dimension.each do |dimension|
    length = dimension[0]
    width = dimension[1]
    areas << length * width
end
p areas # => [200, 1200, 3000]

areas = []
dimension.each do |length, width|
    areas << length * width
end
p areas

dimension.each.with_index do |length, width, index|
    puts "length: #{length}, width: #{width}, index: #{index}"
end
# => length: [10, 20], width: 0, index:
# => length: [30, 40], width: 1, index:
# => length: [50, 60], width: 2, index:

dimension.each.with_index do |(length, width), index|
    puts "length: #{length}, width: #{width}, index: #{index}"
end
# => length: 10, width: 20, index: 0
# => length: 30, width: 40, index: 1
# => length: 50, width: 60, index: 2