class Fib

  # 0(2 to the n)
  def self.find(n)
    return n if n == 0 || n == 1
    find(n-1) + find(n-2)
  end

  # O(N)
  # With dynamic programming
  def self.find_dp(n)
    fib = []
    find_dp_helper(fib, n)
  end

  private
  def self.find_dp_helper(fib, n)
    return n if n == 0 || n == 1
    return fib[n] unless fib[n].nil?
    fib[n] = find_dp_helper(fib, n-1) + find_dp_helper(fib, n-2)
    fib[n]
  end

end