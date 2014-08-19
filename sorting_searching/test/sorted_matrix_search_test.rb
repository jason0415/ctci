require '../sorted_matrix_search'

matrix = [
    [15,20,40,85],
    [20,35,80,95],
    [30,55,95,105],
    [40,80,100,120]
]

puts "Position of 15 is: #{SortedMatrixSearch.find(matrix, 15)}"
puts "Position of 85 is: #{SortedMatrixSearch.find(matrix, 85)}"
puts "Position of 40 is: #{SortedMatrixSearch.find(matrix, 40)}"
puts "Position of 120 is: #{SortedMatrixSearch.find(matrix, 120)}"

puts "Position of 105 is: #{SortedMatrixSearch.find(matrix, 105)}"

puts "########################################################"

puts "Position of 15 is: #{SortedMatrixSearch.find2(matrix, 15)}"
puts "Position of 85 is: #{SortedMatrixSearch.find2(matrix, 85)}"
puts "Position of 40 is: #{SortedMatrixSearch.find2(matrix, 40)}"
puts "Position of 120 is: #{SortedMatrixSearch.find2(matrix, 120)}"

puts "Position of 105 is: #{SortedMatrixSearch.find2(matrix, 105)}"