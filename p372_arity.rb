# ruby p372_arity.rb

def greeting(&block)
    puts 'morning'
    text = 
        if block.arity == 1
            yield 'afternoon'
        elsif block.arity == 2
            yield 'good', 'afternoon'
        end
    puts text
    puts 'afternoon'
end

greeting do |text|
    text * 2
end

greeting { |text_1, text_2| text_1 * 2 + text_2 * 2}