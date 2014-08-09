require '../count_bits_convert'

a = 31
b = 14
puts "Convert between #{a.to_s(2)} and #{b.to_s(2)}, we need to change #{CountBitsConvert.count(a, b)} bits."

a = 12
b = 28
puts "Convert between #{a.to_s(2)} and #{b.to_s(2)}, we need to change #{CountBitsConvert.count(a, b)} bits."
