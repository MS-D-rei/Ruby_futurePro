# ruby word_synthesizer_module_effects.rb

module Effects
    # How to use this method? => Effects.reverse => so we write it as a class method => self.reverse
    def self.reverse
        ->(words) do
            words.split(' ').map(&:reverse).join(' ')
            # (&:reverse) = { |word| word.reverse }
        end
    end

    def self.echo(rate)
        ->(words) do
            words.chars.map { |c| c == ' ' ? c : c * rate }.join
        end
    end

    def self.loud(level)
        ->(words) do
            words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
        end
    end
end
