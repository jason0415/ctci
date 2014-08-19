# Given a sorted array of strings which is interspersed with empty strings, write a
# method to find the location of a given string.
# EXAMPLE
# Input: find "ball" in {"at", "", "", "", "ball", "", "", "car", "", "", "dad", "", ""}
# Output: 4

class EmptyStringSearch

  def self.find(a, key)
    return if key.nil? || key == '' || a.nil?
    find_helper(a, key, 0, a.size-1)
  end

  private
  def self.find_helper(a, key, from, to)
    return nil if from > to
    mid = (from+to)/2

    # Find the closest non-empty string
    if a[mid] == ''
      left = mid-1
      right = mid+1
      loop do
        return nil if left < from && right > to
        if left >= from && a[left] != ''
          mid = left
          break
        elsif right <= to && a[right] != ''
          mid = right
          break
        else
          left -= 1
          right += 1
        end
      end
    end

    if key < a[mid]
      find_helper(a, key, from, mid-1)
    elsif key > a[mid]
      find_helper(a, key, mid+1, to)
    else
      mid
    end
  end

end