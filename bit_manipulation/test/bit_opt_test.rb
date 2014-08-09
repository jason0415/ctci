require '../bit_opt'

num = 0b1001010

puts "Original num is: #{num.to_s(2)}"
i = rand(0..6)
puts "#{i}th right most bit is #{BitOpt.bit(num, i)}"

puts "Set #{i}th right most bit: #{BitOpt.set(num, i).to_s(2)}"

puts "Clear #{i}th right most bit: #{BitOpt.clear(num, i).to_s(2)}"

puts "Number of ones: #{BitOpt.num_of_ones(num)}"
puts "Number of bits: #{BitOpt.num_of_bits(num)}"