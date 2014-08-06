require '../string_compression'

puts "compress string 'aabcccccaaa': #{StringCompression.convert('aabcccccaaa')}"
puts "compress string 'aabb': #{StringCompression.convert('aabb')}"