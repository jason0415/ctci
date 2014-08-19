# Imagine you are reading in a stream of integers. Periodically, you wish to be able
# to look up the rank of a number x (the number of values less than or equal to x).
# Implement the data structures and algorithms to support these operations.That
# is, implement the method track(int x), which is called when each number
# is generated, and the method getRankOfNumber(int x), which returns the
# number of values less than or equal to x (not including x itself).
# EXAMPLE
# Stream (in order of appearance): 5, 1, 4, 4, 5, 9, 7, 13, 3
# getRankOfNumber(1) = 0
# getRankOfNumber(3) = 1
# getRankOfNumber(4) = 3

class InsertRank

  class Node
    attr_accessor :key, :left, :right,
                  :count # Number of nodes in left subtree
    def initialize(key)
      @key = key
      @count = 0
    end
  end

  def insert(key)
    @root = insert_helper(key, @root)
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
  def insert_helper(key, current)
    return Node.new(key) if current.nil?
    if key <= current.key
      current.left = insert_helper(key, current.left)
      current.count += 1
    else
      current.right = insert_helper(key, current.right)
    end
    current
  end

  def rank_helper(key, current)
    return 0 if current.nil?
    if key < current.key
      rank_helper(key, current.left)
    elsif key > current.key
      1 + size(current) + rank_helper(key, current.right)
    else
      size(current)
    end
  end

  # This method is convenient (if current is nil, return 0)
  def size(current)
    return 0 if current.nil?
    current.count
  end

end