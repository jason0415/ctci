# Implement a function void reverse(char* str) in C or C++ which reverses a nullterminated
# string.

class ReverseString

  def self.reverse!(str)
    i = 0
    j = str.size - 1
    until i >= j
      str[i], str[j] = str[j], str[i]
      i += 1
      j -= 1
    end
    str
  end

  def self.reverse2!(str)
    reverse2_helper!(str, 0)
  end

  private
  def self.reverse2_helper!(str, loc)
    return '' if loc == str.size
    reverse2_helper!(str, loc+1) + str[loc]
  end

end