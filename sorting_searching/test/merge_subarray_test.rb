require '../merge_subarray'

a = [2, 4, 6, 8, 9, 12, 15, 16]
b = [0, 1, 3, 4, 7]

MergeSubarray.merge!(a, b)

puts a.inspect