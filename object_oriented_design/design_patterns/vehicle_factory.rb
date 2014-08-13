# The Factory Method offers an interface for creating an instance of a class, with its
# subclasses deciding which class to instantiate.

class VehicleFactory

  def self.create(vehicle_type)
    case vehicle_type
    when 'car'
      Car.new
    when 'bike'
      Bike.new
    else
      nil
    end
  end

end