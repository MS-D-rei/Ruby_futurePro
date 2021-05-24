# ruby p298_module_Comparable.rb

class Tempo
    include Comparable

    attr_reader :bpm

    def initialize(bpm)
        @bpm = bpm
    end

    def <=>(other)
        if other.is_a?(Tempo)
            bpm <=> other.bpm
        else
            nil
        end
    end

    def inspect
        "#{bpm}bpm"
    end
end

puts t_120 = Tempo.new(120).inspect
puts t_180 = Tempo.new(180).inspect

puts t_120 > t_180 # => false
puts t_120 <= t_180 # => true
puts t_120 == t_180 # => false