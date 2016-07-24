module Vehicle
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

class Car
  include Vehicle
  def initialize
    @speed = 25
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Vehicle
  def initialize
    @speed = 5
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
puts bike.accelerate
bike.ring_bell


car = Car.new
puts car.accelerate
car.honk_horn
