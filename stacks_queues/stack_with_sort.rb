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

    @stack.clear
    until buffer_stack.empty?
      @stack << buffer_stack.pop
    end
  end

end