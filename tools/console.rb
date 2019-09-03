require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Mechanic.new("Jim Joe", "Muscle")
m2 = Mechanic.new("Jim", "Beater")
m3 = Mechanic.new("Jam", "Muscle")

o1 = CarOwner.new("Eric")
o2 = CarOwner.new("Erica")

c1 = Car.new(m1, o1, "Honda", "Civic", "Muscle")
c3 = Car.new(m2, o1, "Jeep", "Cherokee", "Beater")

c2 = Car.new(m2, o2, "Lambo", "Vroom Vroom", "Beater")

binding.pry
0
