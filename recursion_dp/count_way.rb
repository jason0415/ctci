# A child is running up a staircase with n steps, and can hop either 1 step, 2 steps, or
# 3 steps at a time. Implement a method to count how many possible ways the child
# can run up the stairs.

class CountWay

  # 0(3 to the n)
  def self.count_way(n)
    if n < 0
      0
    elsif n == 0
      1
    else
      count_way(n-1) + count_way(n-2) + count_way(n-3)
    end
  end

  # O(N)
  # With dynamic programming
  def self.count_way_dp(n)
    map = []
    count_way_dp_helper(n, map)
  end

  private
  def self.count_way_dp_helper(n, map)
    if n < 0
      0
    elsif n == 0
      1
    elsif !map[n].nil?
      map[n]
    else
      map[n] = count_way_dp_helper(n-1, map) +
          count_way_dp_helper(n-2, map) + count_way_dp_helper(n-3, map)
      map[n]
    end
  end

end