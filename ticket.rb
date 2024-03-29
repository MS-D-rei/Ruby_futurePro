# frozen_string_literal: true

# ruby ticket.rb

class Ticket
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end

  def stamp(name)
    @stamped_at = name
  end
end
