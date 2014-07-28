require '../all_paths_sum'

class Node
  attr_accessor :left, :right, :key
  def initialize(key)
    @key = key
  end
end

a = Node.new(-5)
b = Node.new(-4)
c = Node.new(-3)
d = Node.new(-2)
e = Node.new(-1)
f = Node.new(0)
g = Node.new(1)
h = Node.new(2)
i = Node.new(3)
j = Node.new(4)
k = Node.new(5)

a.left = g
a.right = f
g.left = d
g.right = i
d.left = b
i.right = c
f.left = k
f.right = j
j.left = e
e.right = h

puts "All paths start from root sum up to 0:"
AllPathsSum.paths_starts_root(a, 0)

puts '####################################'

puts "All paths sum up to 0:"
AllPathsSum.paths(a, 0)