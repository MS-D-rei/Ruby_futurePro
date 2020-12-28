# ruby p122_arraynew.rb

a = Array.new(5)
p a # => [nil, nil, nil, nil, nil]

a = Array.new(5, 0)
p a # => [0, 0, 0, 0, 0]

a = Array.new(10) { |n| n % 3 + 1}
p a # => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

a = Array.new(5, 'default')
p a # => ['default', 'default', 'default', 'default', 'default']
str = a[0]
p str.upcase! # => 'DEFAULT'
p a # => ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]

a = Array.new(5) { 'default' }
str = a[0]
p str.upcase!
p a # => ["DEFAULT", "default", "default", "default", "default"]