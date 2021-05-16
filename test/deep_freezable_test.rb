# ruby ./test/deep_freezable_test.rb

require 'minitest/autorun'
require './deep_freezedTeam'
require './deep_freezedBank'

class DeepFreezableTest < Minitest::Test
    def test_deep_freeze_array
        # array elements are correct or not
        assert_equal ['Japan', 'US', 'India'], Team::COUNTERIES
        # array itself is freezed or not
        assert Team::COUNTERIES.frozen?
        # all array elements are freezed or not
        assert Team::COUNTERIES.all? { |country| country.frozen? }
    end

    def test_deep_freeze_hash
        # hash values are correct or not
        # We CAN'T omit () this time because we have hash as the first argument.
        assert_equal(
            { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'},
            Bank::CURRENCIES
        )
        # hash itself is freezed or not
        assert Bank::CURRENCIES.frozen?
        # hash all keys and values are freezed or not
        assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
    end
end
