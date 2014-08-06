# Given two strings, write a method to decide if one is a permutation of the other.

class WhetherPermutation

  def self.permutation?(str1, str2)
    a, b = str1.dup, str2.dup
    return false if a.size != b.size
    a.chars.sort == b.chars.sort
  end

end