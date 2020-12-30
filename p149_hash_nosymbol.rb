# ruby p149_hash.rb

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies['italy'] = 'euro'

currencies.each do |key, value|
    puts "#{key}: #{value}"
end

currencies.each do |key_value_array| # if set 1 args, put key and value in array
    key = key_value_array[0]
    value = key_value_array[1]
    puts "#{key}: #{value}"
end