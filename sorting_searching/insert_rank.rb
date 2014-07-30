class InsertRank

  class Node
    attr_accessor :key, :left, :right,
                  :count # Number of nodes in subtree
    def initialize(key)
      @key = key
      @count = 0
    end
  end

  def insert(key)
    new_node = Node.new(key)
    @root = insert_helper(new_node, @root)
  end

  # How many keys are less than key?
  def rank(key)
    rank_helper(key, @root)
  end

  def bfs
    return [] if @root.nil?
    queue = []
    result = []
    queue << @root
    until queue.empty?
      node = queue.shift
      result << [node.key,node.count]
      queue << node.left unless node.left.nil?
      queue << node.right unless node.right.nil?
    end
    result
  end

  private
  def insert_helper(new_node, current)
    return new_node if current.nil?
    if new_node.key <= current.key
      current.left = insert_helper(new_node, current.left)
    else
      current.right = insert_helper(new_node, current.right)
    end
    current.count += 1
    current
  end

  def rank_helper(key, current)
    return 0 if current.nil?
    if key < current.key
      rank_helper(key, current.left)
    elsif key > current.key
      1 + size(current.left) + rank_helper(key, current.right)
    else
      size(current.left)
    end
  end

  # This method is convenient (if current is nil, return 0)
  def size(current)
    return 0 if current.nil?
    current.count
  end

end