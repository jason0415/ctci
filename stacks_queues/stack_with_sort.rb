# Write a program to sort a stack in ascending order (with biggest items on top).
# You may use at most one additional stack to hold items, but you may not copy
# the elements into any other data structure (such as an array). The stack supports
# the following operations: push, pop, peek, and isEmpty.

class StackWithSort

  def initialize
    @stack = []
  end

  def push(key)
    @stack << key
  end

  def peek
    @stack.last
  end

  def pop
    @stack.pop
  end

  def sort!
    buffer_stack = []
    until @stack.empty?
      item = @stack.pop
      until buffer_stack.empty?
        break if item < buffer_stack.last
        @stack << buffer_stack.pop
      end
      buffer_stack << item
    end

    until buffer_stack.empty?
      @stack << buffer_stack.pop
    end
  end

end