require_relative "product"
require_relative "product_pattern"

product = Product.new("Tomato", :fruit, [ %w(red salad sour) ])
product_pattern  = ProductPattern.new product
puts product_pattern.as_row
