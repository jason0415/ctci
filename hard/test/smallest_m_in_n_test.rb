require '../smallest_m_in_n'

rand = rand(0..9)
array = (0..9).to_a.shuffle
puts "Smallest #{rand} numbers in #{array} is: #{SmallestMInN.find(array, rand)}"