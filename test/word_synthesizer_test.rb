# ruby ./test/word_synthesizer_test.rb

require 'minitest/autorun'
require './word_synthesizer'
require './word_synthesizer_module_effects'

class WordSynthTest < Minitest::Test
    def test_play_without_effects
        synth = WordSynth.new
        assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
    end

    def test_play_reverse
        synth = WordSynth.new
        synth.add_affect(Effects.reverse)
        assert_equal 'ybuR si !nuf', synth.play('Ruby is fun!')
    end

    def test_play_with_many_effects
        synth = WordSynth.new
        synth.add_affect(Effects.echo(2))
        synth.add_affect(Effects.loud(2))
        synth.add_affect(Effects.reverse)
        assert_equal '!!YYBBUURR !!SSII !!!!NNUUFF', synth.play('Ruby is fun!')
    end
end
