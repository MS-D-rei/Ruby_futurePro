# ruby gate.rb

class Gate
    def initialize(name)
        @name = name
    end

    STATIONS = [:umeda, :juso, :mikuni]
    FARES = [150, 190]

    def enter(ticket)
        ticket.stamp(@name)
    end

    def exit(ticket)
        fare = calc_fare(ticket)
        fare <= ticket.fare # compare the fare of ticket and calculated fare.
    end

    def calc_fare(ticket)
        from = STATIONS.index(ticket.stamped_at)
        to = STATIONS.index(@name)
        distance = to - from
        FARES[distance - 1]
    end
end
