require '../smallest_m_in_n'

r = rand(0..9)
a = (0..9).to_a.shuffle
puts "Smallest #{r} numbers in #{a} is: #{SmallestMInN.find(a, r)}"