# Write a method to compute all permutations of a string.

class Permutation

  # O(n!)
  # The same as sub sets
  def self.find(str)
    perm = []
    array = str.chars.to_a
    find_helper(array, array.size-1, perm)
    perm
  end

  # O(n!)
  def self.find2(str)
    perm = []
    str_array = str.chars.to_a
    find_helper2(str_array, 0, perm)
    perm
  end

  private
  def self.find_helper(array, i, perm)
    if i == 0
      perm << array[i].to_s
      return
    end
    find_helper(array, i-1, perm)
    perm.size.times do
      str = perm.shift # Take the front one
      (0..str.size).each do |p|
        str_copy = str.dup
        str_copy.insert(p, array[i])
        perm << str_copy # Append new to the end
      end
    end
  end

  def self.find_helper2(str_array, i, perm)
    if i == str_array.size - 1
      perm << str_array.to_s
      return
    end
    (i..str_array.size-1).each do |k|
      str_array[i], str_array[k] = str_array[k], str_array[i]
      find_helper2(str_array, i+1, perm)
      str_array[i], str_array[k] = str_array[k], str_array[i]
    end
  end

end