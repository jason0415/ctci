class BinaryTreeSubtree

  # A tree T2 is a subtree of Tl if there exists a node n in Tl such that the subtree ofn
  # is identical to T2. That is, if you cut off the tree at node n, the two trees would be
  # identical.
  # O(n + km)
  def self.subtree?(root1, root2)
    return true if root2.nil?
    subtree_helper?(root1, root2)
  end

  private
  def self.subtree_helper?(current1, current2)
    return false if current1.nil?
    if current1.key == current2.key
      if match_tree(current1, current2)
        return true
      end
    end
    subtree_helper?(current1.left, current2) || subtree_helper?(current1.right, current2)
  end
  def self.match_tree(current1, current2)
    return true if current1.nil? && current2.nil?
    return false if current1.nil? || current2.nil? # Make sure root1 and root2 are identical
    return false unless current1.key == current2.key
    match_tree(current1.left, current2.left) && match_tree(current1.right, current2.right)
  end

end