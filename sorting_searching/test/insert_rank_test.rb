require '../insert_rank'

bst = InsertRank.new
[5, 1, 4, 4, 5, 9, 7, 13, 3].each do |item|
  bst.insert(item)
end

puts "BFS: #{bst.bfs.inspect}"

puts "Rank(1): #{bst.rank(1)}"
puts "Rank(3): #{bst.rank(3)}"
puts "Rank(4): #{bst.rank(4)}"