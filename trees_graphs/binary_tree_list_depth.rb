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
  end

  private
  def self.create_helper(current, list, level)
    return if current.nil?
    list[level].nil? ? list[level] = [current.key] : list[level] << current.key
    create_helper(current.left, list, level+1)
    create_helper(current.right, list, level+1)
  end

end