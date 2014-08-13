require '../in_memory_file_system'

# -f1
# -f2
# -d1
#   -f3
#   -d3
#     -f4
# -d2

root = Directory.new('root', nil)
f1 = MyFile.new('f1', root, 10)
root.add(f1)
f2 = MyFile.new('f2', root, 20)
root.add(f2)
d1 = Directory.new('d1', root)
root.add(d1)
f3 = MyFile.new('f3', d1, 30)
d1.add(f3)
d3 = Directory.new('d3', d1)
d1.add(d3)
f4 = MyFile.new('f4', d3, 40)
d3.add(f4)
d2 = Directory.new('d2', root)
root.add(d2)

puts "File f1 path: #{f1.full_path}"
puts "File f2 path: #{f2.full_path}"
puts "File f3 path: #{f3.full_path}"
puts "File f4 path: #{f4.full_path}"

puts "Directory d1 path: #{d1.full_path}"
puts "Directory d2 path: #{d2.full_path}"
puts "Directory d3 path: #{d3.full_path}"

puts "Size under the root: #{root.size}"
puts "Number of files under the root: #{root.number_of_files}"

puts "Contents: #{root.inspect}"