# Given a real number between 0 and 1 (e.g., 0.72) that is passed in as a double,
# print the binary representation. If the number cannot be represented accurately
# in binary with at most 32 characters, print "ERROR"

class FloatBinary

  def self.binary(num)
    raise 'Num should be between 0 and 1' if num <= 0 || num >= 1
    result = '.'
    while num > 0
      return 'Error' if result.size > 32
      r = num * 2
      if r >= 1
        result << '1'
        num = r - 1
      else
        result << '0'
        num = r
      end
    end
    result
  end

end