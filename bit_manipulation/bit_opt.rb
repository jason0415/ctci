class BitOpt

  def self.bit(num, i)
    num & (1 << i) == 0 ? 0 : 1
  end

  def self.set(num, i)
    num | (1 << i)
  end

  def self.clear(num, i)
    mask = ~(1 << i)
    num & mask
  end

  def self.num_of_ones(num)
    count = 0
    until num == 0
      last_bit = num & 1
      count += last_bit
      num = num >> 1
    end
    count
  end
  def self.num_of_bits(num)
    num.to_s(2).size
  end

end