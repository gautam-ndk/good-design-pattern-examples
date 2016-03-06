require_relative 'party'
require_relative 'hero_pattern'


# Usage
party = Party.new(HeroPattern.new)
party.add_warriors(3)
party.add_mages(2)
puts party.members.size
# => 5
puts party.members.count{ |member| member.class.to_s == "Mage" }
# => 2