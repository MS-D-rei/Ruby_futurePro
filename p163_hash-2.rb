# ruby p163_hash-2.rb

h = { us: 'dollar', india: 'rupee' }
a = { japan: 'yen', **h }
p a # => {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

def buy_burger(menu, drink:, potato:, **others) # other args are put in **arg as hash
    puts menu
    if drink
        puts drink
    end
    if potato
        puts potato
    end
    if others
        puts others
    end
end

buy_burger('fish', drink: 'tea', potato: 'potato s', salad: 'salad s', chicken: '10 pcs')
# => fish, tea, potato s, {:salad=>"salad s", :chicken=>"10 pcs"}