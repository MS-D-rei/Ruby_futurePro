# ruby p134_while.rb

a = []
while a.size < 5
    a << 1
end
p a # => {1, 1, 1, 1, 1}

a = []
a << 1 while a.size < 5
p a # => [1, 1, 1, 1, 1]

begin # execute 1 time at least
    a << 2
end while false
p a # => [1, 1, 1, 1, 1, 2]

a = [10, 20, 30, 40, 50]
a.delete_at(-1) until a.size <= 3
p a # => [10, 20, 30]