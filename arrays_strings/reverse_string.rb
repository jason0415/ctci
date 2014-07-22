class ReverseString

  def self.reverse(str)
    rev_str = ''
    (str.size-1).downto(0) do |i|
      rev_str << str[i]
    end
    rev_str
  end

  def self.reverse2(str)
    reverse2_helper(str, 0)
  end

  private
  def self.reverse2_helper(str, loc)
    return '' if loc == str.size
    reverse2_helper(str, loc+1) + str[loc]
  end

end