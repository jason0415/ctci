# Describe an algorithm to find the smallest one million numbers in one billion
# numbers. Assume that the computer memory can hold all one billion numbers.

class SmallestMInN

  # O(n)
  def self.find(a, m)
    return a if m > a.size-1
    mth_smallest = mth_smallest(a, m)
    smallest_m = []
    a.each do |item|
      smallest_m << item if item < mth_smallest
    end
    smallest_m
  end

  private
  def self.mth_smallest(a, m)
    a.shuffle!
    left = 0
    right = a.size - 1
    while left < right
      j = partition(a, left, right)
      if m < j
        right = j - 1
      elsif m > j
        left = j + 1
      else
        break
      end
    end
    a[m]
  end
  def self.partition(a, left, right)
    pivot = a[left]
    i = left + 1
    j = right

    loop do
      while a[i] < pivot
        i += 1
        break if i == right + 1
      end

      while a[j] > pivot
        j -= 1
      end

      break if i >= j

      a[i], a[j] = a[j], a[i]

      i += 1
      j -= 1
    end
    a[left], a[j] = a[j], a[left]
    j
  end

end