require '../randomly_m'

r = rand(0..10)
a = (0..9).to_a.shuffle
puts "Pick #{r} integers from #{a.inspect}: #{RandomlyM.find(a, r).inspect}"