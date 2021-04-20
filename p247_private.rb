# ruby p247_private.rb

class User
    def hello
        "Hello, I am #{name}"
    end

    # can't call private method with receiver
    private

    def name
        'Alice'
    end
end

user = User.new
p user.hello