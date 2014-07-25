class OneArrayThreeStacks

  def initialize(stack_size)
    @container = Array.new(stack_size*3)
    @current_stack_pointer = [-1, -1, -1]
    @stack_size = stack_size
  end

  def push(num, key)
    raise 'Not a valid stack number!' unless [0,1,2].include? num
    raise 'Out of stack!' if @current_stack_pointer[num] + 1 >= @stack_size
    @current_stack_pointer[num] += 1
    @container[index_of_stack(num)] = key
  end

  def pop(num)
    raise 'Not a valid stack number!' unless [0,1,2].include? num
    raise 'This stack is empty!' if @current_stack_pointer[num] == -1
    item = @container[index_of_stack(num)]
    @current_stack_pointer[num] -= 1
    item
  end

  private
  def index_of_stack(num)
    num*@stack_size + @current_stack_pointer[num]
  end

end