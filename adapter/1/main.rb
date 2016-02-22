require_relative 'design_pattern'
require_relative 'hero'
require_relative 'old_quest'
require_relative 'quest'

# Usage
hero = Hero.new
quest = Quest.new 5
hero.take_quest quest
hero.finish_quest quest
puts hero.exp
# => 250
some_old_quest = OldQuest.new
old_quest_adapted = DesignPattern.new(some_old_quest, 5)
hero.take_quest old_quest_adapted
hero.finish_quest old_quest_adapted
puts hero.exp
# => 300
