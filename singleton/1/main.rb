require_relative 'one_punch_man'
hero = OnePunchMan.instance
another_hero = OnePunchMan.instance
puts hero == another_hero
# => true
OnePunchMan.new
# => Raise Exception