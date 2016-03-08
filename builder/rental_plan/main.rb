require_relative 'rental_plan'
plan = RentalPlan.make("My First Plan")
puts plan.ranges.first.start # => 1
puts plan.ranges.first.hour_ranges.first.finish # => 24

