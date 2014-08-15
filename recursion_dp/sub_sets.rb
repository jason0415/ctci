# Write a method to return all subsets of a set.

class SubSets

  # O(2^n)
  def self.find(array)
    return nil if array.nil?
    sets = []
    find_helper(array, array.size-1, sets)
    sets
  end

  private
  def self.find_helper(array, index, sets)
    if index < 0
      sets << []
      return
    end
    # Compute SubSets(n-1), clone the results,
    # and then add an to each of these cloned sets.
    find_helper(array, index-1, sets)
    # sets_copy = sets.dup # won't work, dup is a shallow copy
    sets_copy = []
    sets.each do |set|
      sets_copy << set.dup
    end
    sets_copy.each do |set|
      set << array[index]
    end
    sets.concat(sets_copy)
  end

end