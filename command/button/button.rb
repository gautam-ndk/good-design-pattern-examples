class Button
  def initialize args
    @title = args[:title]
    @action = args[:action]
  end

  def click
    @action.new.execute
  end
end
