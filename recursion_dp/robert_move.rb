# Imagine a robot sitting on the upper left corner of an X by Y grid. The robot can
# only move in two directions: right and down. How many possible paths are there
# for the robot to go from (0,0) to (X,Y)?

# FOLLOW UP
# Imagine certain spots are "off limits," such that the robot cannot step on them.
# Design an algorithm to find a path for the robot from the top left to the bottom right.

class RobertMove

  # O(2^n)
  def self.count(x, y)
    return 0 if x < 0 || y < 0
    return 1 if (x==1 && y==0) || (x==0 && y==1)
    count(x-1, y) + count(x, y-1)
  end

  # O(n)
  # with dynamic programming
  def self.count_dp(x, y)
    dp = {}
    count_dp_helper(x, y, dp)
  end

  private
  def self.count_dp_helper(x, y, dp)
    return 0 if x < 0 || y < 0
    return 1 if (x==1 && y==0) || (y==1 && x==0)
    return dp[[x,y]] unless dp[[x,y]].nil?
    dp[[x,y]] = count(x-1, y) + count(x, y-1)
    dp[[x,y]]
  end

end