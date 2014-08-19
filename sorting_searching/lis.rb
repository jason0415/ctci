# Longest increasing sub-array

class LIS

  # O(n^2)
  # Denotes the longest increasing sub-sequence of a[0..i-1] which ends at a[i]
  # Dynamic programming
  # dp is an array that holds longest length ends at i
  def self.find(a=[])
    return [] if a.nil? || a.empty?
    dp = Array.new(a.size, 1)
    combinations = Array.new(a.size) { [] }
    combinations[0] = [a[0]]

    (1..a.size-1).each do |i|
      (0..i-1).each do |j|
        if a[j] < a[i] && dp[j] + 1 > dp[i]
          dp[i] = dp[j] + 1
          combinations[i] = combinations[j].dup << a[i]
        end
      end
    end

    # puts dp.max
    combinations.max_by { |list| list.length }
  end

end