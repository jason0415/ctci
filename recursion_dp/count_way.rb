# A child is running up a staircase with n steps, and can hop either 1 step, 2 steps, or
# 3 steps at a time. Implement a method to count how many possible ways the child
# can run up the stairs.

class CountWay

  # O(3^n)
  def self.count_way(n)
    return 1 if n == 1
    return 2 if n == 2
    return 4 if n == 3
    count_way(n-1) + count_way(n-2) + count_way(n-3)
  end

  # O(n)
  # With dynamic programming
  def self.count_way_dp(n)
    dp = []
    count_way_dp_helper(n, dp)
  end

  private
  def self.count_way_dp_helper(n, dp)
    if n < 0
      0
    elsif n == 0
      1
    elsif !dp[n].nil?
      dp[n]
    else
      dp[n] = count_way_dp_helper(n-1, dp) +
          count_way_dp_helper(n-2, dp) + count_way_dp_helper(n-3, dp)
      dp[n]
    end
  end

end