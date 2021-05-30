# ruby p369_yield.rb

def greeting
    puts 'morning'
    text = yield 'afternoon', 12345
    # pass 2 arguments to block
    puts text
    puts 'evening'
end

greeting do |sample| # Ignore second argument, 12345
    sample * 2
end

def greeting
    puts 'morning'
    text = yield 'afternoon'
    puts text
    puts 'evening'
end

greeting do |text, other| # Second argument is nil
    text * 2 + other.inspect
end

