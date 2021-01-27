# ruby test/convert_hash_syntax_test.rb

require 'minitest/autorun'
require './convert_hash_syntax.rb'

class ConvertHashSyntaxTest < Minitest::Test
    def test_convert_hash_syntax
        old_syntax = <<~TEXT
            {
                :name => 'Alice',
                :age=>20,
                :gender  =>  :female
            }
        TEXT
        expected = <<~TEXT
            {
                name: 'Alice',
                age: 20,
                gender: :female
            }
        TEXT
        converted = convert_hash_syntax(old_syntax)
        puts converted
        assert_equal expected, converted
    end
end