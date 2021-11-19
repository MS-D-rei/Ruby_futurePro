# frozen_string_literal:true

# ruby gate.rb

class Gate
  def initialize(name)
    @name = name
  end

  STATIONS = %i[umeda juso mikuni].freeze
  FARES = [150, 190].freeze

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    fare_should_pay = calc_fare(ticket)
    fare_should_pay <= ticket.fare # compare the fare of ticket and calculated fare.
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
