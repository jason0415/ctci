require '../binary_search_tree'
require '../binary_tree_list_depth'

bt = BinarySearchTree.new
(0..9).to_a.shuffle.each do |item|
  bt.insert(item)
end

puts "BFS: #{bt.bfs.inspect}"
puts "Create linked lists for each depth: #{BinaryTreeListDepth.create(bt)}"