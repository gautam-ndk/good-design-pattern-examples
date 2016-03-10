require_relative 'person'

class PersonMaker
  attr_accessor :person

  def initialize
    @person = Person.new
  end
 
  def set_bmi weight_in_pounds, height_in_inches
    bmi = ((weight_in_pounds * 703) / (height_in_inches.to_f * height_in_inches.to_f))
    @person.bmi = bmi
  end

  def set_age age
    @person.age = age
  end

  def get_person 
    @person
  end 

end