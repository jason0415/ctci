class Fib

  # O(2^n)
  def self.find(n)
    return n if n == 0 || n == 1
    find(n-1) + find(n-2)
  end

  # O(n)
  # With dynamic programming
  def self.find_dp(n)
    dp = []
    dp[0], dp[1] = 0, 1
    find_dp_helper(n, dp)
  end

  private
  def self.find_dp_helper(n, dp)
    return dp[n] unless dp[n].nil?
    dp[n] = find_dp_helper(n-1, dp) + find_dp_helper(n-2, dp)
    dp[n]
  end

end