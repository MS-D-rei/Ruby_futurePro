# frozen_string_literal: true

# ruby p247_private_protected.rb

# users
class User
  attr_reader :name

  def initialize(name = 'Maria', weight = 50)
    @name = name
    @weight = weight
  end

  def hello
    "Hello, I am #{@name}"
  end

  def foo
    'foo'
  end

  def heavier_than?(other_user)
    # can use other weight because it is not private method.
    other_user.weight < @weight
  end

  # use protected method when we don't want to open but want to use it in class or sub class.
  protected

  attr_reader :weight

  # can't call private method with receiver
  private :foo # can add public method as private

  def name
    'Alice'
  end
end

# VIP of users
class VIP < User
  # overwrite hello method
  def hello
    "Glad to meet you, Ms. #{name}"
  end

  def to_s
    # can use private method of super class
    "name: #{name}"
  end
end

user = User.new
vip = VIP.new
p user.hello # => "Hello, I am Maria"
p vip.hello # => "Glad to meet you, Ms. Alice"
p vip.to_s # => "name: Alice"

maria = User.new('Maria', 50)
john = User.new('John', 70)

p maria.heavier_than?(john) # => false
# p maria.weight
# => protected method `weight' called for #<User:0x00007fec2a852dc0 @name="Maria", @weight=50> (NoMethodError)
