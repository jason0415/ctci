# Write a method to replace all spaces in a string with'%20'. You may assume that
# the string has sufficient space at the end of the string to hold the additional
# characters, and that you are given the "true" length of the string.
# (Note: if implementing in Java, please use a character array so that you can perform this operation in place.)
# EXAMPLE
# Input: "Mr John Smith
# Output: "Mr%20Dohn%20Smith"

class ReplaceWhitespaces

  def self.replace!(str, i)
    j = str.size-1
    until i < 0
      if str[i] == ' '
        str[j],str[j-1],str[j-2] = '0','2','%'
        j -= 3
      else
        str[j] = str[i]
        j -= 1
      end
      i -= 1
    end
    str
  end

end