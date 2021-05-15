# ruby p288_module_extend.rb

module PutsLog
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    extend PutsLog

    def self.create_products(names)
        log 'create_products is called.'
        puts "#{names} is created."
    end
end

Product.create_products([])

Product.log('Hello')