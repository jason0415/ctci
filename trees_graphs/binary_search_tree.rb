class BinarySearchTree

  class Node
    attr_accessor :left, :right, :key
    def initialize(key)
      @key = key
    end
  end

  attr_reader :root

  def insert(key)
    new_node = Node.new(key)
    @root = insert_helper(new_node, @root)
  end

  def height
    height_helper(@root)
  end

  def self.contains?(current, key)
    return false if current.nil?
    return true if current.key == key
    contains?(current.left, key) || contains?(current.right, key)
  end

  def bfs
    return [] if @root.nil?
    queue = []
    result = []
    queue << @root
    until queue.empty?
      node = queue.shift
      result << node.key
      queue << node.left unless node.left.nil?
      queue << node.right unless node.right.nil?
    end
    result
  end

  private
  def insert_helper(new_node, current)
    return new_node if current.nil?
    if new_node.key < current.key
      current.left = insert_helper(new_node, current.left)
    elsif new_node.key > current.key
      current.right = insert_helper(new_node, current.right)
    else
      current.key = new_node.key
    end
    current
  end

  def height_helper(current)
    return 0 if current.nil?
    1 + [height_helper(current.left),height_helper(current.right)].max
  end

end