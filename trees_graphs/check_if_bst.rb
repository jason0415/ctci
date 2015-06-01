# Implement a function to check if a binary tree is a binary search tree.

class CheckIfBST

  # left.data < current.data < right.data for each node is not sufficient
  # O(N)
  def self.bst?(current)
    return false if current.nil?
    check_bst?(current, -999, 999)
  end

  private
  def self.check_bst?(current, min, max)
    return true if current.nil?
    return false if current.key < min || current.key > max
    check_bst?(current.left, min, current.key) && check_bst?(current.right, current.key, max)
  end

end