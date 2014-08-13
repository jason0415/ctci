# Design a parking lot using object-oriented principles.

# Assumptions:
# The parking lot has multiple levels. Each level has multiple rows of spots.
# • The parking lot can park motorcycles, cars.
# • The parking lot has motorcycle spots, compact spots, and large spots.
# • A motorcycle can park in any spot.
# • A car can park in either a single compact spot or a single large spot.

class Vehicle
  VEHICLE_TYPE = %w(motorcycle car).freeze
  attr_reader :plate, :vehicle_type

  def initialize(plate, vehicle_type)
    raise 'Not a valid vehicle!' unless VEHICLE_TYPE.include?(vehicle_type)
    @plate, @vehicle_type = plate, vehicle_type
  end
end

class MotorCycle < Vehicle
end

class Car < Vehicle
end

class VehicleFactory
  def self.create(plate, vehicle_type)
    case vehicle_type
      when 'motorcycle'
        MotorCycle.new(plate, vehicle_type)
      when 'car'
        Car.new(plate, vehicle_type)
      else
        nil
    end
  end
end

class ParkingSpot
  SPOT_TYPE = %w(motorcycle compact).freeze
  attr_reader :level, :row, :spot_number, :vehicle, :spot_type

  def initialize(level, row, spot_number, spot_type)
    raise 'Not a valid spot type!' unless SPOT_TYPE.include?(spot_type)
    @level, @row, @spot_number, @spot_type = level, row, spot_number, spot_type
  end

  def available?
    @vehicle == nil
  end

  def park(vehicle)
    if available? && fit?(vehicle)
      @vehicle = vehicle
    end
  end

  def fit?(vehicle)
    return false if vehicle.vehicle_type == 'car' && spot_type == 'motorcycle'
    true
  end

  def leave
    @vehicle = nil
  end

  def to_s
    "level: #{@level}, row: #{@row}, spot_number: #{@spot_number}, spot_type: #{@spot_type}"
  end
end

require 'singleton'
class ParkingLot
  include Singleton

  def initialize
    @spots = [
        ParkingSpot.new(0, 0, 'a','motorcycle'), ParkingSpot.new(0, 0, 'b','motorcycle'),
        ParkingSpot.new(0, 1, 'a','compact'), ParkingSpot.new(0, 1, 'b','compact'),
        ParkingSpot.new(1, 0, 'a','motorcycle'), ParkingSpot.new(1, 0, 'b','motorcycle'),
        ParkingSpot.new(1, 1, 'a','compact'), ParkingSpot.new(1, 1, 'b','compact')
    ]
  end

  def park?(vehicle)
    spot = first_available_spot(vehicle)
    return false if spot.nil?
    spot.park(vehicle)
    true
  end

  def available_spots
    available_spots = []
    @spots.each do |spot|
      available_spots << spot if spot.available?
    end
    available_spots
  end

  def first_available_spot(vehicle)
    @spots.each do |spot|
      return spot if spot.available? && spot.fit?(vehicle)
    end
    nil
  end
end