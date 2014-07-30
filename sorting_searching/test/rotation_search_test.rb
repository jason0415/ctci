require '../rotation_search'

array = [8,9,0,1,2,3,4,5,6,7]
rand = rand(0..9)
puts "Find location of #{rand}: #{RotationSearch.find(array, rand)}"
puts "Find location of #{rand}: #{array.index(rand)}"

puts '###################'

array2 = [10,15,20,0,5]
puts "Find location of 5: #{RotationSearch.find(array2, 5)}"
puts "Find location of 5: #{array2.index(5)}"

puts '###################'

array2 = [50,5,20,30,40]
puts "Find location of 5: #{RotationSearch.find(array2, 5)}"
puts "Find location of 5: #{array2.index(5)}"