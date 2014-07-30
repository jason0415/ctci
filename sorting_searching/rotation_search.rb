# Given a sorted array of n integers that has been rotated an unknown number of
# times, write code to find an element in the array. You may assume that the array
# was originally sorted in increasing order.
# EXAMPLE
# Input: find 5 in {15, 16, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14}
# Output: 8 (the index of 5 in the array)

class RotationSearch

  # O(log n) if all the elements are unique.
  # However, with many duplicates, the algorithm is actually O(n). This is because with
  # many duplicates, we will often have to search both the left and right sides of the array (or subarrays).
  def self.find(array=[], key)
    find_helper(array, key, 0, array.size-1)
  end

  private
  def self.find_helper(array, key, left, right)
    return nil if left > right
    mid = (left+right)/2
    return mid if key == array[mid]
    if array[mid] > array[left] # Left side is sorted
      if key >= array[left] && key <= array[mid] # Search on left
        find_helper(array, key, left, mid-1)
      else
        find_helper(array, key, mid+1, right)
      end
    elsif array[mid] < array[left] # Left side is not sorted, that means Right side is sorted
      if key >= array[mid] && key <= array[right] # Search on right
        find_helper(array, key, mid+1, right)
      else
        find_helper(array, key, left, mid-1)
      end
    else # Left half is all repeats
      if array[mid] == array[right] # both leftmost key and rightmost key are the same as middle key.
        result = find_helper(array, key, left, mid-1)
        result = find_helper(array, key, mid+1, right) if result.nil?
        result
      else # If rightmost key is different than middle key, search right side
        find_helper(array, key, mid+1, right)
      end
    end
  end

end