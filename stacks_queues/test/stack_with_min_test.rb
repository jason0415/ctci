require '../stack_with_min'

stack = StackWithMin.new
stack.push(5)
puts stack.min
stack.push(6)
puts stack.min
stack.push(3)
puts stack.min
stack.push(7)
puts stack.min

stack.pop
puts stack.min
stack.pop
puts stack.min