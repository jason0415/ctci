require '../merge_subarray'

a = [2, 4, 6, 8, 9, 12, 15, 16, -1, -1, -1, -1, -1]
b = [0, 1, 3, 4, 7]

MergeSubarray.merge!(a, b, 7, 4)

puts a.inspect