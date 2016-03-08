require_relative 'meta'
require_relative 'range'
require_relative 'hour_range'

class RentalPlan
  attr_reader :ranges

  def self.make name
    make_meta name
    make_ranges
    new @meta, @ranges
  end

  def self.make_meta name
    @meta = Meta.new name
  end

  def self.make_ranges
    @ranges = [ PlanRange.make ]
  end

  def initialize meta, ranges
    @meta = meta
    @ranges = ranges
  end

  def name
    @meta.name
  end

end
