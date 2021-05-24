# ruby p284_module_include.rb

module PutsLog
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    include PutsLog
    # mix PutsLog in as a instance method

    def title
        log 'title is called.'
        'Great movie'
    end
end

class User
    include PutsLog

    def name
        log 'name is called.'
        'Alice'
    end
end

product = Product.new
puts product.title

user = User.new
puts user.name

puts Product.include?(PutsLog)
p Product.included_modules # => [PutsLog, Kernel]
p Product.ancestors # => [Product, PutsLog, Object, Kernel, BasicObject]

puts product.class.include?(PutsLog) # => true
puts product.is_a?(PutsLog) # => true