# Imagine a (literal) stack of plates. If the stack gets too high, it might topple.
# Therefore, in real life, we would likely start a new stack when the previous stack
# exceeds some threshold. Implement a data structure SetOf Stacks that mimics
# this. SetOf Stacks should be composed of several stacks and should create a
# new stack once the previous one exceeds capacity. SetOf Stacks. push() and SetOf Stacks.
# pop() should behave identically to a single stack (that is, pop()
# should return the same values as it would if there were just a single stack).

# FOLLOW UP
# Implement a function popAt(int index) which performs a pop operation on
# a specific sub-stack.

class SetsOfStacks

  THRESHOLD = 3

  def initialize
    @stacks = []
    @current_stack = 0
  end

  def push(key)
    @current_stack += 1 if full?
    if @stacks[@current_stack].nil?
      @stacks[@current_stack] = [key]
    else
      @stacks[@current_stack] << key
    end
  end

  def pop
    item = @stacks[@current_stack].pop
    @current_stack -= 1 if empty? && !item.nil?
    item
  end

  private
  def full?
    return false if @stacks[@current_stack].nil?
    @stacks[@current_stack].size == 2
  end
  def empty?
    @stacks[@current_stack].nil? || @stacks[@current_stack].size == 0
  end

end