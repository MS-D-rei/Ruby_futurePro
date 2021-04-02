# ruby p183_regexp1.rb

# How to compare
regex = /\d{3}-\d{4}/
p regex.class # => Regexp
p '123-4567' =~ regex # => 0
p '123-4567' !~ regex # => false
p 'hello' =~ regex # => nil
p 'hello' !~ regex # => true

# How to extract data
text = '2021year, 1month, 18day'
p m = /(?<year>\d+)year, (?<month>\d+)month, (?<day>\d+)day/.match(text) # => #<MatchData "2021year, 1month, 18day" 1:"2021" 2:"1" 3:"18">
p m[0] # => "2021year, 1month, 18day"
p m[1] # => "2021"
p m[1..3] # => ["2021", "1", "18"]
p m[:year] # => "2021"
p m['year'] # => "2021"
p text[/(?<year>\d+)year, (?<month>\d+)month, (?<day>\d+)day/] # => "2021year, 1month, 18day"
p text[/(?<year>\d+)year, (?<month>\d+)month, (?<day>\d+)day/, 1] # => "2021"
p text[/(?<year>\d+)year, (?<month>\d+)month, (?<day>\d+)day/, :month] # => "1"
p text[/(?<year>\d+)year, (?<month>\d+)month, (?<day>\d+)day/, 'day'] # => "18"

if /(?<year>\d+)year, (?<month>\d+)month, (?<day>\d+)day/ =~ text
    p "#{year}/#{month}/#{day}"
end # => "2021/1/18"
# we have to use this order (/xxx/ =~ text)
# can't use text =~ /xxx/, it will make a error
# can't use regexp(variable) =~ text too.

# scan
# 'string'.scan(/xxx/) return a array
p '2000y, 7m, 17d 2021y, 1m, 18d'.scan(/\d+y, \d+m, \d+d/) # => ["2000y, 7m, 17d", "2021y, 1m, 18d"]
p '2000y, 7m, 17d 2021y, 1m, 18d'.scan(/(\d+)y, (\d+)m, (\d+)d/) # => [["2000", "7", "17"], ["2021", "1", "18"]]
p '2000y, 7m, 17d 2021y, 1m, 18d'.scan(/(?:\d+)y, (?:\d+)m, (?:\d+)d/) # => ["2000y, 7m, 17d", "2021y, 1m, 18d"]

# split
text = '+81,3457-7890'
p text.split(/,|-/) # => ["+81", "3457", "7890"]

# gsub
text = '123,456-7890'
p text.gsub(',', '-') # => "123-456-7890"
p text.gsub(/,|-/, ':') # => "123:456:7890"
hash_convert = {',' => '/', '-' => '/'}
p text.gsub(/,|-/, hash_convert) # => "123/456/7890"
p text.gsub(/,|-/,) { |matched| matched == ',' ? ':' : '/' } # => "123:456/7890"
birthday = '1977, 7, 17'
p birthday.gsub(/(\d+), (\d+), (\d+)/, '\1-\3-\2') # => "1977-17-7"
p birthday.gsub(/(?<year>\d+), (?<month>\d+), (?<day>\d+)/, '\k<year>, \k<day> \k<month>') # => "1977, 17 7"