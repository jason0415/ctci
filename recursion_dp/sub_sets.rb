# Write a method to return all subsets of a set.

class SubSets

  # O(2^n)
  def self.find(str)
    sets = []
    find_helper(str, str.size-1, sets)
    sets
  end

  def self.find2(a=[])
    sets = []
    find_helper2(a, a.size-1, sets)
    sets
  end

  private
  def self.find_helper(str, i, sets)
    if i < 0
      sets << ''
      return
    end
    # Compute SubSets(n-1), clone the results,
    # and then add str[i] to each of these cloned sets.
    find_helper(str, i-1, sets)
    sets_copy = sets.dup
    sets_copy.collect! { |set| set + str[i] }
    sets.concat(sets_copy)
  end
  def self.find_helper2(a, i, sets)
    if i < 0
      sets << []
      return
    end
    # Compute SubSets(n-1), clone the results,
    # and then add a[i] to each of these cloned sets.
    find_helper2(a, i-1, sets)
    # sets_copy = sets.dup # won't work, dup is a shallow copy
    sets_copy = []
    sets.each do |set|
      sets_copy << set.dup
    end
    sets_copy.collect! { |set| set << a[i] }
    sets.concat(sets_copy)
  end

end