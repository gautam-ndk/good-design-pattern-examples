require_relative 'design_pattern'
require_relative 'board'
require_relative 'monster'
require_relative 'title'

# Usage
handle = DesignPattern.new 2, 3
puts handle.board
# => Board Object
board = handle.board
puts board.width
# => 2
handle.add_tiles(3)
handle.add_monsters(2)
puts board.tiles.size
# => 3
puts board.monsters.size
# => 2