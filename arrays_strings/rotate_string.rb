# Assume you have a method isSubstring which checks if one word is a
# substring of another. Given two strings, si and s2, write code to check if s2 is
# a rotation of si using only one call to isSubstring (e.g.,"waterbottle"is a rotation
# of "erbottlewat").

class RotateString

  # Only use one call of include? to check if str1 and str2 are rotations
  def self.rotation?(str1, str2)
    str1.size == str2.size && (str1+str1).include?(str2)
  end

end