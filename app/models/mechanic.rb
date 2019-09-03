class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    array_of_cars = self.cars()
    array_of_cars.map do |car|
      car.owner
    end
  end

  def owner_names
    self.car_owners.map { |owner| owner.full_name }
  end


























end
