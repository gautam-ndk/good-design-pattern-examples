require 'forwardable'

class DesignPattern
  extend Forwardable


  def_delegators :real_object, :add

  def initialize(hero)
    @hero = hero
  end

  def execute
    check_access
    real_object.execute
  end

  def check_access
    unless @hero.keywords.include?(:computer)
      raise "You have no access"
    end
  end

  def real_object
    @real_object ||= Computer.new
  end
end