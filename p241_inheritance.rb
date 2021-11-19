# frozen_string_literal: true

# ruby p241_inheritance.rb

# super class of DVD
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

# DVD inherit Product as a super class
class DVD < Product
  attr_reader :running_time # no need to set name and price because super class has done.

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
p product.to_string # "name: product, price: 1000"
p Product.superclass # Object
p product.methods.sort
p product.instance_of?(Product) # true

dvd = DVD.new('movie', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time
p dvd.to_s # "#<DVD:0x00007fe9dc8902b0>"
p dvd.to_string # "name: movie, price: 1000, running_time: 120"
p DVD.superclass # Product
p dvd.is_a?(Product) # true
