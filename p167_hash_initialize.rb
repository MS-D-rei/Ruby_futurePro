# ruby p167_hash_initialize.rb

h = {}
p h[:foo] #=> nil

h = Hash.new('hello')
a = h[:foo]
b = h[:bar]
p a # => if don't have the key, return "hello"
p a.equal?(b) # => true

a.upcase!
p a # => "HELLO"
p b # => "HELLO"
p h # => {}

h = Hash.new { 'hello' }
a = h[:foo]
b = h[:bar]
p a # => "hello"
p a.equal?(b) # => false

a.upcase!
p a # => "HELLO"
p b # => "hello"
p h # => {}

h = Hash.new { |hash, key| hash[key] = 'hello' }
# in this case, 'hash' arg is hash itself. 
a = h[:foo] # |hash, key| h[:foo] = 'hello' => add foo: hello in hash h.
b = h[:bar]
p a
p h # => {:foo=>"hello", :bar=>"hello"}