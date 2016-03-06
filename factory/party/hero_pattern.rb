require_relative 'warrior'
require_relative 'mage'

class HeroPattern
  def create_warrior
    Warrior.new
  end

  def create_mage
    Mage.new
  end
end

