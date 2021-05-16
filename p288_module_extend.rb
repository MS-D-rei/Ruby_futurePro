# ruby p288_module_extend.rb

module PutsLog
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    extend PutsLog
    # mix module method in class method

    # make class method
    def self.create_products(names)
        log 'create_products is called.'
        puts "#{names} is created."
    end
end

Product.create_products([])

# can call log method directly as class method.
Product.log('Hello')