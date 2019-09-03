class Car

  attr_reader :make, :model, :mechanic, :owner, :classification
  @@all = []

  def initialize(mechanic, owner, make, model, classification)
    @mechanic = mechanic
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def find_mechanics
    # Mechanic.all
    # select

    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end

  end

  def list_of_mechanics
    self.find_mechanics.map { |mechanic| "#{mechanic.name}" }
  end


























end
