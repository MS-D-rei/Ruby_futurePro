# ruby p341_exception_raise.rb

def currency_of(country)
    case country
    when :japan
        'yen'
    when :us
        'dollor'
    when :india
        'rupee'
    else
        # raise makes RuntimeError intensionally
        raise "Invalid country name #{country}"
        # raise ArgumentError, "Invalid country name #{country}" => set ArgumentError (1st argument), message (2nd argument)
        # raise ArgumentError.new("Invalid country name #{country}") => can use a instance of exception class
    end
end

puts currency_of(:japan) # => yen
puts currency_of(:italy) # => p341_exception_raise.rb:12:in `currency_of': Invalid country name italy (RuntimeError)