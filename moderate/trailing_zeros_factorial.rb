class TrailingZerosFactorial

  def self.count(n)
    return -1 if n < 0
    count = 0
    (2..n).each do |i|
      count += factorial_of_5(i)
    end
    count
  end

  private
  def self.factorial_of_5(i)
    count = 0
    while i % 5 == 0
      count += 1
      i /= 5
    end
    count
  end

end