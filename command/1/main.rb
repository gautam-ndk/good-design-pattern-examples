require_relative 'turn'
require_relative 'hero'
require_relative 'heal'
require_relative 'get_money'


# Usage
hero = Hero.new
get_money = GetMoney.new hero
heal = Heal.new hero
turn = Turn.new
turn.run(heal)
puts hero.health
# => 110
turn.run(get_money)
puts hero.money
# => 10
turn.undo
puts hero.money
# => 0
