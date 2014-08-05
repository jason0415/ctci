require '../randomly_m'

rand = rand(0..10)
a = (0..9).to_a.shuffle
puts "Pick #{rand} integers from #{a.inspect}: #{RandomlyM.find(a, rand).inspect}"