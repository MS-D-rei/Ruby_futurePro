# ruby p310_module_function.rb

# module_function enables us to call a method as singular method and instance method both.

module PutsLog
    def log(text)
        puts "[LOG] #{text}"
    end

    # need to set module_function below the method I want to set as module_function
    module_function :log
end

# call as the singular method of module
PutsLog.log('Hello')

class Product
    include PutsLog

    def title
        log 'title is called'
        'A movie'
    end

end

product = Product.new
# call as the instance method
puts product.title