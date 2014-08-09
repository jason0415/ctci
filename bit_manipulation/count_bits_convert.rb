# Write a function to determine the number of bits required to convert integer A
# to integer B.
# EXAMPLE
#   - Input: 31,14
#   - Output: 2

class CountBitsConvert

  def self.count(a, b)
    num_of_ones(a^b)
  end

  private
  def self.num_of_ones(num)
    count = 0
    until num == 0
      last_bit = num & 1
      count += last_bit
      num = num >> 1
    end
    count
  end

end