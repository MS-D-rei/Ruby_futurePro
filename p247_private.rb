# ruby p247_private.rb

class User
    def hello
        "Hello, I am #{name}"
    end

    def foo
        'foo'
    end

    # can't call private method with receiver
    private :foo # can add public method as private

    def name
        'Alice'
    end
end

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
p user.hello
p vip.hello
p vip.to_s