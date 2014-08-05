require '../median'

median = Median.new
puts "[]'s median: #{median.find}"
median.insert(4)
puts "[4]'s median: #{median.find}"
median.insert(7)
puts "[4,7]'s median: #{median.find}"
median.insert(2)
puts "[4,7,2]'s median: #{median.find}"
median.insert(6)
puts "[4,7,2,6]'s median: #{median.find}"
median.insert(1)
puts "[4,7,2,6,1]'s median: #{median.find}"
median.insert(3)
puts "[4,7,2,6,1,3]'s median: #{median.find}"