class SetsOfStacks

  THRESHOLD = 3

  def initialize
    @stacks = []
  end

  def push(key)
    stack = last_stack
    if stack.nil? || full?(stack)
      stack = []
      stack << key
      @stacks << stack
    else
      stack << key
    end
  end

  def pop
    stack = last_stack
    return nil if stack.nil?
    item = stack.pop
    @stacks.pop if stack.empty?
    item
  end

  private
  def last_stack
    @stacks.size == 0 ? nil : @stacks[@stacks.size-1]
  end

  def full?(stack)
    return false if stack.nil?
    stack.size == THRESHOLD
  end

end