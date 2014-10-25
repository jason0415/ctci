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
  def self.find(a=[], key)
    find_helper(a, key, 0, a.size-1)
  end

  private
  def self.find_helper(a, key, from, to)
    return nil if from > to
    mid = (from+to)/2
    return mid if key == a[mid]
    if a[mid] > a[from] # Left side is sorted
      if key >= a[from] && key < a[mid] # Search on left
        find_helper(a, key, from, mid-1)
      else
        find_helper(a, key, mid+1, to)
      end
    elsif a[mid] < a[from] # Left side is not sorted, that means Right side is sorted
      if key > a[mid] && key <= a[to] # Search on right
        find_helper(a, key, mid+1, to)
      else
        find_helper(a, key, from, mid-1)
      end
    else # Left half are all repeats
      if a[mid] == a[to] # both leftmost key and rightmost key are the same as middle key
                         # eg. [1,1,1,1,2,3,1], [1,2,3,1,1,1,1] => we need to search for both sides
        result = find_helper(a, key, from, mid-1)
        find_helper(a, key, mid+1, to) if result.nil?
      else # If rightmost key is different than middle key, search right side
        find_helper(a, key, mid+1, to)
      end
    end
  end

end