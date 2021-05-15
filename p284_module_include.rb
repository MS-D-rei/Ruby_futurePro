# ruby p284_module_include.rb

module PutsLog
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    include PutsLog

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