# ruby p254_constant.rb

class Product
    DEFAULT_PRICE = 0

    PRIVATE_PRICE = 100

    NAME = "product A"
    SOME_NAMES = ['Foo', 'Bar', 'Baz']
    SOME_PRICES = { 'Foo' => 1000, 'Bar' => 2000, 'Baz' => 3000 } 

    # make constant private
    private_constant :PRIVATE_PRICE
end

p Product::DEFAULT_PRICE

# p Product::PRIVATE_PRICE => private constant Product::PRIVATE_PRICE referenced (NameError)

# In Ruby, we can change constant
Product::NAME.upcase!
p Product::NAME # => "PRODUCT A"

Product::SOME_NAMES << 'Hoge'
p Product::SOME_NAMES # => ["Foo", "Bar", "Baz", "Hoge"]

Product::SOME_PRICES['Hoge'] = 4000
p Product::SOME_PRICES # => {"Foo"=>1000, "Bar"=>2000, "Baz"=>3000, "Hoge"=>4000}