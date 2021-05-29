# ruby p304_namespace.rb

module Baseball
    class Second

        attr_reader :player

        def initialize(player, uniform_number)
            @player = player
            @uniform_number = uniform_number
        end
    end
end

module Clock
    class Second

        attr_reader :digits

        def initialize(digits)
            @digits = digits
        end
    end
end

puts Baseball::Second.new('Alice', 13).player
puts Clock::Second.new(12).digits