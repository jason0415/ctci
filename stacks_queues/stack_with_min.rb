# How would you design a stack which, in addition to push and pop, also has a
# function min which returns the minimum element? Push, pop and min should
# all operate in O(1) time.

class StackWithMin

  def initialize
    @stack = []
    @min_stack = []
  end

  def push(key)
    @stack << key
    @min_stack << key if @min_stack.empty? || key < @min_stack.last
  end

  def pop
    item = @stack.pop
    unless item.nil?
      @min_stack.pop if @min_stack.last == item
    end
    item
  end

  def min
    @min_stack.last
  end

end