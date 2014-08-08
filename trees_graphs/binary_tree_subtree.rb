# You have two very large binary trees: Tl, with millions of nodes, and T2, with
# hundreds of nodes. Create an algorithm to decide ifT2 is a subtree of Tl.
# A tree T2 is a subtree of Tl if there exists a node n in Tl such that the subtree of
# n is identical to T2. That is, if you cut off the tree at node n, the two trees would
# be identical.

class BinaryTreeSubtree

  # O(n + km)
  def self.subtree?(current1, current2)
    return true if current2.nil?
    return false if current1.nil?
    if current1.key == current2.key
      if match_tree?(current1, current2)
        return true
      end
    end
    subtree?(current1.left, current2) || subtree?(current1.right, current2)
  end

  private
  def self.match_tree?(current1, current2)
    return true if current1.nil? && current2.nil?
    return false if current1.nil? || current2.nil? # Make sure root1 and root2 are identical
    return false unless current1.key == current2.key
    match_tree?(current1.left, current2.left) && match_tree?(current1.right, current2.right)
  end

end