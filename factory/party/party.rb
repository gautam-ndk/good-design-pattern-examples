class Party
  attr_reader :members
  def initialize(pattern)
    @members = []
    @pattern = pattern
  end

  def add_warriors(n)
    n.times{ @members << @pattern.create_warrior }
  end

  def add_mages(n)
    n.times{ @members << @pattern.create_mage }
  end
end