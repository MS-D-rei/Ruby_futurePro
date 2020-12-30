# ruby p154_keywordargs.rb

def buy_burger(menu, drink: false, poteto: false) # keyword argument: default_value
    puts menu
    if drink
        puts drink
    end
    if poteto
        puts poteto
    end
end

buy_burger('fish', poteto: 'poteto small', drink: 'tea')