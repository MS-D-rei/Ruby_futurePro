# frozen_string_literal: true

# ruby p206_hash_class_diff.rb

# hash

users = []
users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
users << { first_name: 'Bob', last_name: 'Python', age: 30 }

def full_name_hash(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

users.each do |user|
  puts "#{full_name_hash(user)}, #{user[:age]}"
end

# hash characteristics
# 1. difficult to find typing mistake because it returns just a nil
# users[0][:first_nme] => nil
# 2. easy to change keys and values
# users[0][:country] = 'Japan'

# class
class User
  attr_reader :first_name, :last_name, :age # read only

  # attr_accessor :first_name, :last_name, :age => read and write
  # attr_writer : first_name, :last_name, :age => write only

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name_class
    "#{@first_name} #{@last_name}"
  end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

users.each do |user|
  puts "#{user.full_name_class}, #{user.age}"
end

# class characteristics
# 1. easy to find typeing mistakes
# users[0].first_nme => NoMethodError: undefined method 'first_nme'
# 2. difficult to change attributes
# users[0].first_name = 'Carol' => NoMethodError
