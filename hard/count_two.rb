# Write a method to count the number of 2s that appear in all the numbers between 0 and n (inclusive).
# EXAMPLE
# Input: 25
# Output: 9 (2,12,20,21,22,23, 24 and 25. Note that 22 counts for two 2s.)

class CountTwo

  # Brute force
  def self.count(n)
    c = 0
    (2..n).each do |d|
      c += count_helper(d)
    end
    c
  end

  private
  def self.count_helper(n)
    c = 0
    until n == 0
      c += 1 if n % 10 == 2
      n /= 10
    end
    c
  end

end