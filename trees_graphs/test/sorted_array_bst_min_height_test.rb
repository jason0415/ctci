require '../sorted_array_bst_min_height'
require '../binary_search_tree'

sorted_array = (0..19).to_a
bst = BinarySearchTree.new
SortedArrayBSTMinHeight.create(bst, sorted_array)
puts "BFS: #{bst.bfs.inspect}"