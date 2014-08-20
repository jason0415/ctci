require '../../trees_graphs/binary_search_tree'
require '../bst_to_d_linked_list'

bst = BinarySearchTree.new
bst.insert(5)
bst.insert(2)
bst.insert(0)
bst.insert(1)
bst.insert(4)
bst.insert(3)
bst.insert(9)
bst.insert(6)
bst.insert(8)
bst.insert(7)
puts bst.bfs.inspect

head = BSTtoDLinkedList.convert(bst.root)

puts head.inspect
