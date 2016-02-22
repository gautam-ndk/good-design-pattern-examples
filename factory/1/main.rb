require_relative 'shape_pattern'

shape_pattern = ShapePattern.new

circle = shape_pattern.get_shape('CIRCLE')
circle.draw

rectangle = shape_pattern.get_shape('RECTANGLE')
rectangle.draw

