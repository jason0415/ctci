# A magic index in an array A[l.. .n-l] is defined to be an
# index such that A[i] = i. Given a sorted array of distinct
# integers, write a method to find a magic index, if one exists, in array A.

class MagicIndex

  def self.find(array)
    raise 'Input is not sorted!' unless array == array.sort
    raise 'Input is not distinct' unless array == array.uniq
    find_helper(array, 0 , array.size-1)
  end

  private
  def self.find_helper(array, from, to)
    return nil if from > to
    mid = (from + to) / 2
    if array[mid] > mid
      find_helper(array, from, mid-1)
    elsif array[mid] < mid
      find_helper(array, mid+1, to)
    else
      array[mid]
    end
  end

end