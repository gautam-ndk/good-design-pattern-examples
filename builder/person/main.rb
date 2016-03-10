require_relative 'person_maker'

maker = PersonMaker.new
maker.set_bmi 154, 66
maker.set_age 30

person = maker.get_person
puts person.bmi
puts person.age
# => bmi = <>, age = 30
