# Given an array of integers, write a method to find indices m and n such that if you
# sorted elements m through n, the entire array would be sorted. Minimize n - m
# (that is, find the smallest such sequence).
# EXAMPLE
# Input: 1, 2, 4, 7, 10, 11, 7, 12, 6, 7, 16, 18, 19
# Output: (3, 9)

class MinMNSort

  MAX = 999
  MIN = -999


  # Observation.
  # - The integers before m should be ascending and smaller than (or equal to) any integers after.
  #
  # Algorithm.
  # - Start from the first element, and stop upon first decreasing. (sub array SA)
  # - Find minimum after. (MIN)
  # - The start point is just after the maximum integer in SA that is smaller than (or equal to) MIN. (m is found)
  #
  # Complexity.
  # - O(n)

  # Do similar for n.
  def self.find(a=[])
    return [0,0] if a.size < 2

    m,n = 0,0

    # 1. Start from the first element, and stop upon first decreasing (Left part). (Find m)
    i = 0
    until a[i+1] < a[i]
      i += 1
      return [0,0] if i == a.size - 1 # Already sorted in ascending order
    end

    # 2. Find minimum after i (Right part).
    j = i+1
    min = MAX
    (j..a.size-1).each do |k|
      min = a[k] if a[k] < min
    end

    # 3. Find closest number that is greater than min
    (0..i).each do |k|
      if a[k] > min
        m = k
        break
      end
    end

    # 4. Do similar for n.
    i = a.size-1
    until a[i-1] > a[i]
      i -= 1
      return [0,0] if i == 0 # Already sorted in descending order
    end

    j = i-1
    max = MIN
    (0..j).each do |k|
      max = a[k] if a[k] > max
    end

    (a.size-1).downto(j).each do |k|
      if a[k] < max
        n = k
        break
      end
    end

    [m,n]
  end

end