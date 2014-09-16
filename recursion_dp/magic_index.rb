# A magic index in an array A[l.. .n-l] is defined to be an
# index such that A[i] = i. Given a sorted array of distinct
# integers, write a method to find a magic index, if one exists, in array A.

# FOLLOW UP
# What if the values are not distinct?

class MagicIndex

  def self.find(array)
    raise 'Input is not sorted!' unless array == array.sort
    raise 'Input is not distinct' unless array == array.uniq
    find_helper(array, 0, array.size-1)
  end

  def self.find_not_distinct(array)
    raise 'Input is not sorted!' unless array == array.sort
    find_not_distinct_helper(array, 0, array.size-1)
  end

  private
  def self.find_helper(array, from, to)
    return if from > to
    mid = (from + to) / 2
    if array[mid] > mid
      find_helper(array, from, mid-1)
    elsif array[mid] < mid
      find_helper(array, mid+1, to)
    else
      mid
    end
  end

  def self.find_not_distinct_helper(array, from, to)
    return if from > to
    mid = (from + to) / 2
    if array[mid] > mid
      index = find_helper(array, from, mid-1)
      find_helper(array, array[mid], to) if index.nil?
    elsif array[mid] < mid
      index = find_helper(array, mid+1, to)
      find_helper(array, from, array[mid]) if index.nil?
    else
      mid
    end
  end

end