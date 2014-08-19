# You are given two sorted arrays, A and B, where A has a large enough buffer at
# the end to hold B. Write a method to merge B into A in sorted order.

class MergeSubarray

  def self.merge!(a=[], b=[], last_a, last_b)
    i = last_a
    j = last_b
    pos = a.size-1
    loop do
      break if i < 0 || j < 0
      if a[i] > b[j]
        a[pos] = a[i]
        i -= 1
      elsif a[i] < b[j]
        a[pos] = b[j]
        j -= 1
      else
        a[pos], a[pos-1] = a[i],a[i]
        i -= 1
        j -= 1
        pos -= 1
      end
      pos -= 1
    end

    until i < 0
      a[pos] = a[i]
      pos -= 1
      i -= 1
    end
    until j < 0
      a[pos] = b[j]
      pos -= 1
      j -= 1
    end
    a
  end

end