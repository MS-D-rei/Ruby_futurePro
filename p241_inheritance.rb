# ruby p241_inheritance.rb

class Product
    attr_reader :name, :price
    
    def initialize(name, price)
        @name = name
        @price = price
    end

    # can overwrite to_s, but I remain it to show "#<Product:0x00007fe9dc890530>" as an example.
    def to_string
        "name: #{name}, price: #{price}"
    end
end

class DVD < Product # DVD inherit Product as a super class
    attr_reader :running_time # no need to set name and price because super class has them.

    # if DVD.initialize = Product.initialize, no need to write initialize here
    def initialize(name, price, running_time)
        super(name, price) # super.initialize(name, price)
        @running_time = running_time
    end

    # overwrite to_string of super class
    def to_string
        "#{super}, running_time: #{running_time}"
    end
end

product = Product.new('product', 1000)
p product.name
p product.price
p product.to_s # "#<Product:0x00007fe9dc890530>"
p product.to_string

dvd = DVD.new('movie', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time
p dvd.to_s # "#<DVD:0x00007fe9dc8902b0>"
p dvd.to_string