require_relative 'computer'
require_relative 'hero'
require_relative 'design_pattern'
# Usage
hero = Hero.new
handle = DesignPattern.new(hero)
handle.add("some command")
begin
  handle.execute
rescue Exception => e
  # => error message - You have no access
  puts e.message
end


hero.keywords << :computer
puts handle.execute
# => executing commands
