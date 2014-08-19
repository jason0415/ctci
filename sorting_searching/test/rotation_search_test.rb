require '../rotation_search'

a = [8,9,0,1,2,3,4,5,6,7]
key = rand(0..19)
puts "Find location of #{key}: #{RotationSearch.find(a, key)}"
puts "Find location of #{key}: #{a.index(key)}"

puts '###################'

a2 = [10,15,20,0,5]
puts "Find location of 5: #{RotationSearch.find(a2, 5)}"
puts "Find location of 5: #{a2.index(5)}"

puts '###################'

a2 = [50,5,20,30,40]
puts "Find location of 5: #{RotationSearch.find(a2, 5)}"
puts "Find location of 5: #{a2.index(5)}"