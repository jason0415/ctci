# Imagine a (literal) stack of plates. If the stack gets too high, it might topple.
# Therefore, in real life, we would likely start a new stack when the previous stack
# exceeds some threshold. Implement a data structure SetOf Stacks that mimics
# this. SetOf Stacks should be composed of several stacks and should create a
# new stack once the previous one exceeds capacity. SetOf Stacks. push() and SetOf Stacks.
# pop() should behave identically to a single stack (that is, pop()
# should return the same values as it would if there were just a single stack).

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