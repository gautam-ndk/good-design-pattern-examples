class DesignPattern
  def initialize(width, height)
    @board = Board.new
    @board.width = width
    @board.height = height
    @board.tiles = []
    @board.monsters = []
  end

  def add_tiles(n)
    n.times{ @board.tiles << Tile.new }
  end

  def add_monsters(n)
    n.times{ @board.monsters << Monster.new }
  end

  def board
    @board
  end
end
