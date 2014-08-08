# Write an algorithm to find the'next'node (i.e., in-order successor) of a given node
# in a binary search tree. You may assume that each node has a link to its parent.

class BSTFindNext

  def self.find_next(bst, key)
    return nil if bst.nil?
    current = bst.search(key)
    return nil if current.nil?

    if current.right.nil?
      previous = nil
      until current.left == previous
        previous = current
        current = current.parent
      end
    else # left-most child of right sub-tree
      until current.right.left.nil?
        current = current.left
      end
    end
    current
  end

end