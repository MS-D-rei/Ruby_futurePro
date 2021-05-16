# ruby deep_freezedTeam.rb

require './deep_freezable'

class Team
    extend DeepFreezable

    COUNTERIES = deep_freeze(['Japan', 'US', 'India'])
end
