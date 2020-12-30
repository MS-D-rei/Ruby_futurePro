# ruby p154_keywordargs.rb

def buy_burger(menu, drink: false, potato: false) # keyword argument: default_value
    puts menu
    if drink
        puts drink
    end
    if poteto
        puts potato
    end
end

buy_burger('fish', potato: 'poteto small', drink: 'tea')