class WhetherPermutation

  def self.permutation?(str1, str2)
    return false if str1.size != str2.size
    str1.chars.sort == str2.chars.sort
  end

end