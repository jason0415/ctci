# Given a binary tree, design an algorithm which creates a linked list of all the
# nodes at each depth (e.g., if you have a tree with depth D, you'll have D linked
# lists).

class BinaryTreeListDepth

  # DFS solution
  def self.create(bt)
    return nil if bt.nil?
    root = bt.root
    list = []
    create_helper(root, list, 0)
    list
  end

  # BFS solution
  def self.create2(bt)
    # TODO
    # May need two queues
  end

  private
  def self.create_helper(current, list, level)
    return if current.nil?
    list[level].nil? ? list[level] = [current.key] : list[level] << current.key
    create_helper(current.left, list, level+1)
    create_helper(current.right, list, level+1)
  end

end