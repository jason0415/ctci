class Permutation

  def self.find(str)
    perm = []
    str_array = str.chars.to_a
    find_helper(str_array, 0, perm)
    perm
  end

  def self.find_helper(str_array, i, perm)
    if i == str_array.size - 1
      perm << str_array.to_s
      return
    end
    (i..str_array.size-1).each do |k|
      str_array[i], str_array[k] = str_array[k], str_array[i]
      find_helper(str_array, i+1, perm)
      str_array[i], str_array[k] = str_array[k], str_array[i]
    end
  end

end