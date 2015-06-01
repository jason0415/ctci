# Implement a function to check if a binary tree is balanced. For the purposes of
# this question, a balanced tree is defined to be a tree such that the heights of the
# two subtrees of any node never differ by more than one.

class CheckIfBalanced

  # Not efficient
  # O(N²)
  def self.balanced?(current)
    return true if current.nil?
    diff_height = height_helper(current.left)-height_helper(current.right)
    return false if diff_height.abs > 1
    balanced?(current.left) && balanced?(current.right)
  end

  # Efficient version
  # O(N)
  def self.balanced2?(current)
    return false if current.nil?
    check_height(current) == -1 ? false : true
  end

  private
  def self.height_helper(current)
    return 0 if current.nil?
    1 + [height_helper(current.left),height_helper(current.right)].max
  end
  def self.check_height(current)
    return 0 if current.nil?

    # Check if left tree is balanced
    left_height = check_height(current.left)
    return -1 if left_height == -1

    # Check if right tree is balanced
    right_height = check_height(current.right)
    return -1 if right_height == -1

    # Check if current tree is balanced
    diff_height = left_height - right_height
    return -1 if diff_height.abs > 1

    1 + [left_height, right_height].max
  end


end