class QueueTwoStacks

  def initialize
    @stack1 = []
    @stack2 = []
  end

  def enqueue(key)
    @stack1 << key
  end

  def dequeue
    if @stack2.empty?
      until @stack1.empty?
        @stack2 << @stack1.pop
      end
    end
    @stack2.pop
  end

end