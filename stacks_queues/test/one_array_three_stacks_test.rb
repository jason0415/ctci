require '../one_array_three_stacks'

tree_stacks = OneArrayThreeStacks.new(3)
tree_stacks.push(0, 'a')
tree_stacks.push(0, '0')

tree_stacks.push(1, 'b')
tree_stacks.push(1, '1')

tree_stacks.push(2, 'c')
tree_stacks.push(2, '2')

puts tree_stacks.pop(0)
puts tree_stacks.pop(0)

puts tree_stacks.pop(1)
puts tree_stacks.pop(1)

puts tree_stacks.pop(2)
puts tree_stacks.pop(2)