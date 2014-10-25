# Implement a function void reverse(char* str) in C or C++ which reverses a null terminated
# string.

class ReverseString

  def self.reverse!(str)
    i, j = 0, str.size-1
    until i >= j
      str[i], str[j] = str[j], str[i]
      i += 1
      j -= 1
    end
    str
  end

  def self.reverse2!(str)
    reverse2_helper!(str, str.size-1)
  end

  private
  def self.reverse2_helper!(str, i)
    return str[i] if i == 0
    str[i] + reverse2_helper!(str, i-1)
  end

end