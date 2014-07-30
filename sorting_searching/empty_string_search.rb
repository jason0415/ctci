class EmptyStringSearch

  def self.find(array, key)
    return if key.nil? || key == '' || array.nil?
    find_helper(array, key, 0, array.size-1)
  end

  private
  def self.find_helper(array, key, from, to)
    return nil if from > to
    mid = (from+to)/2

    # Find the closest non-empty string
    if array[mid] == ''
      left = mid-1
      right = mid+1
      loop do
        return nil if left < from && right > to
        if left >= from && array[left] != ''
          mid = left
          break
        elsif right <= to && array[right] != ''
          mid = right
          break
        else
          left -= 1
          right += 1
        end
      end
    end

    if key < array[mid]
      find_helper(array, key, from, mid-1)
    elsif key > array[mid]
      find_helper(array, key, mid+1, to)
    else
      mid
    end
  end

end