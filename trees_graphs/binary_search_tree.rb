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

  # Not efficient
  # O(N²)
  def balanced?
    balanced_helper?(@root)
  end

  # Efficient version
  # O(N)
  def balanced2?
    balanced_helper2?(@root)
  end

  # Not efficient
  # O(N²)
  def bst?
    bst_helper?(@root)
  end

  # Efficient version
  # O(N)
  def bst2?
    bst_helper2?(@root)
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

  def self.contains?(current, key)
    return false if current.nil?
    return true if current.key == key
    contains?(current.left, key) || contains?(current.right, key)
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
  def balanced_helper?(current)
    return true if current.nil?
    diff_height = height_helper(current.left)-height_helper(current.right)
    return false if diff_height.abs > 1
    balanced_helper?(current.left) && balanced_helper?(current.right)
  end

  def balanced_helper2?(current)
    return false if check_height(current) == -1
    true
  end
  def check_height(current)
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

  def min_helper(current)
    return nil if current.nil?
    until current.left.nil?
      current = current.left
    end
    current
  end
  def max_helper(current)
    return nil if current.nil?
    until current.right.nil?
      current = current.right
    end
    current
  end
  def bst_helper?(current)
    return true if current.nil?
    unless current.left.nil?
      return false if current.key < max_helper(current.left).key
    end
    unless current.right.nil?
      return false if current.key > min_helper(current.right).key
    end
    bst_helper?(current.left) && bst_helper?(current.right)
  end

  def bst_helper2?(current)
    check_bst?(current, -100000, 100000)
  end
  def check_bst?(current, min, max)
    return true if current.nil?
    return false if current.key < min || current.key > max
    check_bst?(current.left, min, current.key) && check_bst?(current.right, current.key, max)
  end

end