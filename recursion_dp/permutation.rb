# Write a method to compute all permutations of a string.

class Permutation

  # O(n!)
  # The same as sub sets
  def self.find(str)
    perms = []
    find_helper(str, str.size-1, perms)
    perms
  end

  # O(n!)
  def self.find2(str)
    perm = []
    str_array = str.chars.to_a
    find_helper2(str_array, 0, perm)
    perm
  end

  private
  def self.find_helper(str, i, perms)
    if i < 0
      perms << ''
      return
    end
    find_helper(str, i-1, perms)
    perms.size.times do
      s = perms.shift # Take the front one
      (0..s.size).each do |p|
        s_copy = s.dup
        s_copy.insert(p, str[i])
        perms << s_copy # Append new to the end
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