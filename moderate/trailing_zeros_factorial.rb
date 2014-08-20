# Write an algorithm which computes the number of trailing zeros in n factorial.

class TrailingZerosFactorial

  # To count the number of 0s, therefore, we only need to count the pairs of multiples of
  # 5 and 2. There will always be more multiples of 2 than 5 though, so simply counting the
  # number of multiples of 5 is sufficient.
  def self.count(n)
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