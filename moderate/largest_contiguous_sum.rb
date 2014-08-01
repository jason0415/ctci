# You are given an array of integers (both positive and negative).
# Find the contiguous sequence with the largest sum. Return the sum.

# Solution. Kadane’s Algorithm: O(n)

class LargestContiguousSum

  def self.find(a)
    return nil if a.nil?
    max_so_far, max_ending_here = 0, 0
    a.each do |item|
      max_ending_here += item
      max_ending_here = 0 if max_ending_here < 0
      max_so_far = max_ending_here if max_ending_here > max_so_far
    end
    max_so_far
  end

end