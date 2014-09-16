require '../sorted_array_bst_min_height'
require '../binary_search_tree'

sorted_array = (0..19).to_a
puts "BFS: #{SortedArrayBSTMinHeight.create(sorted_array).bfs.inspect}"