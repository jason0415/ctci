# Given a sorted (increasing order) array with unique integer elements, write an
# algorithm to create a binary search tree with minimal height.

class SortedArrayBSTMinHeight

  def self.create(sorted_array)
    bst = BinarySearchTree.new
    create_helper(bst, sorted_array, 0, sorted_array.size-1)
    bst
  end

  private
  def self.create_helper(bst, sorted_array, i, j)
    return if i > j
    mid = (i+j)/2
    bst.insert(sorted_array[mid])
    create_helper(bst, sorted_array, i, mid-1)
    create_helper(bst, sorted_array, mid+1, j)
  end

end