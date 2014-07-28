class AllPathsSum

  # Does this node start a path with the sum ?
  def self.paths_starts_root(root, sum)
    paths = []
    paths_starts_root_helper(root, sum, 0, paths, 0)
  end

  # Does this node complete a path with the sum ?
  def self.paths(root, sum)
    paths = []
    paths_helper(root, sum, paths, 0)
  end

  private
  def self.paths_starts_root_helper(current, sum, tmp, paths, level)
    return if current.nil?
    paths[level] = current.key # Insert current node into path.
    tmp += current.key
    print(paths) if tmp == sum
    paths_starts_root_helper(current.left, sum, tmp, paths, level+1)
    paths_starts_root_helper(current.right, sum, tmp, paths, level+1)
    paths[level] = nil # Remove current node from paths
  end
  def self.print(paths)
    puts paths.select { |v| v != nil }.inspect
  end

  def self.paths_helper(current, sum, paths, level)
    return if current.nil?
    paths[level] = current.key # Insert current node into path.

    # Look for paths with a sum that ends at this node.
    tmp = 0
    level.downto(0).each do |i|
      tmp += paths[i]
      print_level(paths, i, level) if tmp == sum
    end

    paths_helper(current.left, sum, paths, level+1)
    paths_helper(current.right, sum, paths, level+1)
    paths[level] = nil # Remove current node from paths
  end
  def self.print_level(paths, from, to)
    puts paths[from..to].inspect
  end

end