# You are given two sorted arrays, A and B, where A has a large enough buffer at
# the end to hold B. Write a method to merge B into A in sorted order.

class MergeSubarray

  def self.merge!(a, size_a, b)
    return if a.nil? || b.nil?
    c = size_a-1
    i, j = a.size-1, b.size-1
    until c < 0 || j < 0
      if a[c] > b[j]
        a[i] = a[c]
        c -= 1
      else
        a[i] = b[j]
        j -= 1
      end
      i -= 1
    end
    until j < 0
      a[i] = b[j]
      i -= 1
      j -= 1
    end
    a
  end

end