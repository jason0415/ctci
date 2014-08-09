require '../float_binary'

puts "0.75's binary representation is: #{FloatBinary.binary(0.75)}"
puts "0.5's binary representation is: #{FloatBinary.binary(0.5)}"
puts "0.25's binary representation is: #{FloatBinary.binary(0.25)}"
puts "0.125's binary representation is: #{FloatBinary.binary(0.125)}"
puts "0.0625's binary representation is: #{FloatBinary.binary(0.0625)}"
puts "0.03125's binary representation is: #{FloatBinary.binary(0.03125)}"

puts "0.123's binary representation is: #{FloatBinary.binary(0.123)}" # ERROR