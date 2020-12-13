country = 'イタリア'

message1 = if country == 'japan'
    'こんにちは'
elsif country == 'us'
    'Hello'
elsif country == 'italy'
    'ciao'
else
    '???'
end

puts message1

message2 = case country
when 'japan', '日本'
    'こんにちは'
when 'us', 'アメリカ'
    'Hello'
when 'italy', 'イタリア'
    'ciao'
else
    '???'
end

puts message2