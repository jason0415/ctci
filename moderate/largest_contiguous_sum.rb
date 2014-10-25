# You are given an array of integers (both positive and negative).
# Find the contiguous sequence with the largest sum. Return the sum.
# EXAMPLE
# Input: 2, -8, 3, -2, 4, -10
# Outputs (i.e., {3, -2, 4}

# Solution. Kadane’s Algorithm: O(n)
# Kadane's algorithm consists of a scan through the array values,
# computing at each position the maximum (positive sum) sub-array ending at that position.

class LargestContiguousSum

  # Dynamic Programming
  def self.find(a)
    max_so_far, max_ending_here = 0, 0
    a.each do |item|
      max_ending_here += item
      max_ending_here = 0 if max_ending_here < 0
      max_so_far = max_ending_here if max_ending_here > max_so_far
    end
    max_so_far
  end

end