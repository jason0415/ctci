class StackWithMin

  def initialize
    @stack = []
    @min_stack = []
  end

  def push(value)
    @stack << value
    if @min_stack.empty? || value < @min_stack.last
      @min_stack << value
    end
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