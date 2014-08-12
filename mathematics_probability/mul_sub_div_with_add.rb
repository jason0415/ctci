# Write methods to implement the multiply, subtract, and divide operations for integers.
# Use only the add operator.

class MulSubDivWithAdd

  def self.subtract(a, b)
    a + negate(b)
  end

  def self.multiply(a, b)
    multiply(b, a) if a < b
    sum = 0
    b.abs.times do
      sum += a
    end
    sum = negate(sum) if b < 0
    sum
  end

  def self.divide(a, b)
    raise 'Error' if b == 0
    a_abs = a.abs
    b_abs = b.abs

    sum = 0
    result = 0
    until sum >= a_abs
      sum += b_abs
      result += 1
    end

    if a < 0 && b < 0 || a > 0 && a > 0
      result
    else
      negate(result)
    end
  end

  private
  def self.negate(num)
    res = 0
    d = num > 0 ? -1 : 1
    until num == 0
      res += d
      num += d
    end
    res
  end

end