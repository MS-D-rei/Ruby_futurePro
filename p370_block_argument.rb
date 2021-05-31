# ruby p370_block_argument.rb

def greeting(&block)
    puts 'morning'
    text = block.call('afternoon')
    puts text
    puts 'evening'
end

greeting do |example|
    example * 2
end

def greeting_en(&block)
    texts = ['morning', 'afternoon', 'evening']
    # can pass block arguments to other method
    greeting_common(texts, &block)
end

# need to put block argument at last
def greeting_common(texts, &block)
    puts texts[0]
    puts block.call(texts[1])
    puts texts[2]
end

greeting_en do |aaa|
    aaa * 3
end
