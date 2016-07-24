class Vehicle
attr_reader :speed, :direction
  def initialize
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle

  def initialize(vehicle_options)
    super
    @speed = vehicle_options[:speed]
    @make = vehicle_options[:make]
    @model = vehicle_options[:model]
    @fuel = vehicle_options[:fuel]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  def initialize(vehicle_options)
    super
    @speed = vehicle_options[:speed]
    @brand = vehicle_options[:brand]
    @type = vehicle_options[:type]
    @weight = vehicle_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
puts bike.accelerate
puts bike.ring_bell

car = Car.new
puts car.accelerate
puts car.honk_horn

p Car.ancestors
