# frozen_string_literal: true

# ruby convert_length_test.rb
# ruby test/convert_length_test.rb

require 'minitest/autorun'
require_relative '../convert_length'

# Test for convert length
class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, from: :m, to: :in)
    assert_equal 0.38, convert_length(15, from: :in, to: :m)
    assert_equal 10_670.73, convert_length(35_000, from: :ft, to: :m)
  end
end
