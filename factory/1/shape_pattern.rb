require_relative 'circle'
require_relative 'rectangle'

class ShapePattern
  #use getShape method to get object of type shape
  def get_shape(type)
    case type
    when 'CIRCLE'    then Circle.new
    when 'RECTANGLE' then Rectangle.new
    else nil
    end
  end
end
