require_relative 'binary_search_tree'

# Find least common ancestor in a binary tree
class BTLca

  # Not necessary a bst
  # O(N)
  def self.find(root, key1, key2)
    return nil unless BinarySearchTree.contains?(root, key1) &&
        BinarySearchTree.contains?(root, key2)
    find_helper(root, key1, key2)
  end

  private
  def self.find_helper(current, key1, key2)
    return nil if current.nil?
    return current.key if current.key == key1 || current.key == key2

    key1_on_left = BinarySearchTree.contains?(current.left, key1)
    key2_on_left = BinarySearchTree.contains?(current.left, key2)

    # If they are in different sides, return current node
    return current.key unless key1_on_left == key2_on_left

    if key1_on_left # If they are both in the left
      find_helper(current.left, key1, key2)
    else # If they are both in the right
      find_helper(current.right, key1, key2)
    end
  end

end