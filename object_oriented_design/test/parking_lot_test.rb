require '../parking_lot'

cars = [VehicleFactory.create('00', 'car'), VehicleFactory.create('01', 'car'),
        VehicleFactory.create('02', 'car'), VehicleFactory.create('03', 'car')]

motorcycles = [VehicleFactory.create('00', 'motorcycle'), VehicleFactory.create('01', 'motorcycle'),
        VehicleFactory.create('02', 'motorcycle'), VehicleFactory.create('03', 'motorcycle')]

parking_lot = ParkingLot.instance
puts "Initial parking lot: #{parking_lot.available_spots.inspect}"

cars.each do |car|
  puts parking_lot.park?(car)
end
puts "After parking cars: #{parking_lot.available_spots.inspect}"
puts "Park one more car: #{parking_lot.park?(VehicleFactory.create('04', 'car'))}"

motorcycles.each do |motorcycle|
  puts parking_lot.park?(motorcycle)
end
puts "After parking motorcycles: #{parking_lot.available_spots.inspect}"
puts "Park one more motorcycle: #{parking_lot.park?(VehicleFactory.create('04', 'motorcycle'))}"

