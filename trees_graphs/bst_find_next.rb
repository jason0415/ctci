# Find in-order successor of a given node, assume each has a parent pointer
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
    return current
  end

end