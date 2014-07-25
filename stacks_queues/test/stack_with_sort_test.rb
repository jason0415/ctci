require '../stack_with_sort'

stack = StackWithSort.new
stack.push(2)
stack.push(6)
stack.push(1)
stack.push(3)
stack.push(4)
stack.push(0)
stack.push(5)

stack.sort!

puts stack.pop
puts stack.pop
puts stack.pop
puts stack.pop
puts stack.pop
puts stack.pop
puts stack.pop

puts stack.pop