require '../magic_index'

array = [-40, -20, -1, 1, 2, 3, 5, 7, 9, 12, 13]
puts "One magic index is #{MagicIndex.find(array)}"

array = [-10, -5, 2, 2, 2, 3, 4, 8, 9, 12, 13]
puts "One magic index is #{MagicIndex.find_not_distinct(array)}"