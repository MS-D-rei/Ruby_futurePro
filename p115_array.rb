# ruby p115_array.rb
a = [1, 2, 3, 4, 5]
p a[1, 3] # => [2, 3, 4]
p a.values_at(0, 2, 4) # => [1, 3, 5] array.values_at[index, index, ...] => [array[index], array[index], ...]
p a[a.size - 1] # => 5
p a.last # => 5
p a.last(2) # => [4, 5]
p a.first(2) # => [1, 2]

a[1, 3] = 100
p a # =>[1, 100, 5]
a.delete(100)
p a.push(6, 7) # => [1, 5, 6, 7]
p a << 8 # => [1, 5, 6, 7, 8]

# set
b = [1, 2, 3]
c = [3, 4, 5]
p b | c # => [1, 2, 3, 4, 5]
p b - c # => [1, 2]
p b & c # => [3]

# *
e, f = 100, 200, 300
p e # => 100
p f # => 200
e, *f = 100, 200, 300
p f # => [200, 300]

g = []
h = [1, 2]
p g.push(h) # => [[1, 2]]
p g.push(*h) # =>[[1, 2], 1, 2]

i = 'abcdefg'
p i[2] # => 'c'
p i[2, 3] # => 'cde'
i[1, 2] = 'BC'
p i # 'aBCdefg'
i << 'HIJ'
p i