require '../binary_search_tree'
require '../check_if_balanced'
require '../check_if_bst'
require '../bt_lca'
require '../binary_tree_subtree'

bst = BinarySearchTree.new
(0..9).to_a.shuffle.each do |item|
  bst.insert(item)
end

puts "BFS: #{bst.bfs.inspect}"

puts "Height: #{bst.height}"

puts "Is this tree balanced? - #{CheckIfBalanced.balanced?(bst.root)}"
puts "Is this tree balanced2? - #{CheckIfBalanced.balanced2?(bst.root)}"

puts "Is this tree a bst? - #{CheckIfBST.bst?(bst.root)}"

key1 = rand(0..9)
key2 = rand(0..9)
puts "The least common ancestor of #{key1} and #{key2} is: #{BTLca.find(bst.root, key1, key2)}"

bst2 = BinarySearchTree.new
bst2.insert(0)
bst2.insert(1)
puts "Is bst2 a subtree of bst? - #{BinaryTreeSubtree.subtree?(bst.root, bst2.root)}"