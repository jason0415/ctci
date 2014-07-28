class SortedArrayBSTMinHeight

  def self.insert(bst, sorted_array)
    insert_helper(bst, sorted_array, 0, sorted_array.size-1)
  end

  private
  def self.insert_helper(bst, sorted_array, i, j)
    return if i > j
    mid = (i+j)/2
    bst.insert(sorted_array[mid])
    insert_helper(bst, sorted_array, i, mid-1)
    insert_helper(bst, sorted_array, mid+1, j)
  end

end