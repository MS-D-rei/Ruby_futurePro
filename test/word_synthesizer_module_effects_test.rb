# ruby ./test/word_synthesizer_module_effects_test.rb

require 'minitest/autorun'
require './word_synthesizer_module_effects'

class EffectsTest < Minitest::Test
    def test_reverse
        effect = Effects.reverse # return Proc object
        assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
    end

    def test_echo
        effect = Effects.echo(2)
        assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')

        effect = Effects.echo(3)
        assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!')
    end

    def test_loud
        effect = Effects.loud(2)
        assert_equal 'RUBY!! IS!! FUN!!!', effect.call('Ruby is fun!')
    end
end
