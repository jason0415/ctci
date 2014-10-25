# Numbers are randomly generated and passed to a method. Write a program to
# find and maintain the median value as new values are generated.

class Median

  class SimpleMinHeap
    def initialize
      @container = []
    end
    def push(item)
      index = @container.index { |element| element > item }
      index.nil? ? @container.push(item) : @container.insert(index, item)
    end
    def pop
      @container.shift
    end
    def peek
      @container.first
    end
    def empty?
      @container.empty?
    end
    def size
      @container.size
    end
  end

  class SimpleMaxHeap
    def initialize
      @container = []
    end
    def push(item)
      index = @container.index { |element| element > item }
      index.nil? ? @container.push(item) : @container.insert(index, item)
    end
    def pop
      @container.pop
    end
    def peek
      @container.last
    end
    def empty?
      @container.empty?
    end
    def size
      @container.size
    end
  end

  def initialize
    @min_heap, @max_heap = SimpleMinHeap.new, SimpleMaxHeap.new
  end

  def insert(item)
    if @min_heap.size == @max_heap.size
      if !@min_heap.empty? && item > @min_heap.peek
        @max_heap.push(@min_heap.pop)
        @min_heap.push(item)
      else
        @max_heap.push(item)
      end
    else
      # compare with the median
      median = @max_heap.peek
      if item > median
        @min_heap.push(item)
      else
        @min_heap.push(@max_heap.pop)
        @max_heap.push(item)
      end
    end
  end

  def find
    return if @max_heap.empty?
    if @min_heap.size == @max_heap.size
      (@min_heap.peek.to_f + @max_heap.peek.to_f)/2
    else
      @max_heap.peek
    end
  end

end