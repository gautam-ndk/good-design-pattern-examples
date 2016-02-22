class Turn
  def initialize
    @objects = []
  end

  def run(object)
    object.execute
    @objects << object
  end

  def undo
    @objects.pop.unexecute
  end
end
