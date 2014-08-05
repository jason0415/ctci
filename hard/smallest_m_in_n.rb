class SmallestMInN

  # O(n)
  def self.find(array, m)
    return array if m > array.size-1
    mth_smallest = mth_smallest(array, m)
    smallest_m = []
    array.each do |item|
      smallest_m << item if item < mth_smallest
    end
    smallest_m
  end

  private
  def self.mth_smallest(array, m)
    array.shuffle!
    left = 0
    right = array.size - 1
    while left < right
      j = partition(array, left, right)
      if m < j
        right = j - 1
      elsif m > j
        left = j + 1
      else
        return array[m]
      end
    end
    array[m]
  end
  def self.partition(array, left, right)
    pivot = array[left]
    i = left + 1
    j = right

    loop do
      while array[i] < pivot
        i += 1
        break if i == right + 1
      end

      while array[j] > pivot
        j -= 1
      end

      break if i >= j

      array[i], array[j] = array[j], array[i]

      i += 1
      j -= 1
    end
    array[left], array[j] = array[j], array[left]
    j
  end

end