# Given two strings, write a method to decide if one is a permutation of the other.

class WhetherPermutation

  def self.permutation?(str1, str2)
    return false unless str1.size == str2.size
    a, b = str1.dup, str2.dup
    a.chars.sort == b.chars.sort
  end

end