# Maximum Sum Increasing Sub-sequence

class MSIS

  # O(n^2)
  # Denotes the maximum sum increasing sub-sequence of a[0..i-1] which ends at a[i]
  # Dynamic programming
  # dp is an array that holds maximum sum ends at i
  def self.find(a=[])
    return [] if a.nil? || a.empty?
    dp = a.dup
    combinations = Array.new(a.size) {[]}
    combinations[0] = [a[0]]

    (1..a.size-1).each do |i|
      (0..i-1).each do |j|
        if a[j] < a[i] && dp[j] + a[i] >= dp[i]
          dp[i] = dp[j] + a[i]
          combinations[i] = combinations[j].dup << a[i]
        end
      end
    end

    # puts dp.inspect
    combinations.max_by { |list| sum_array(list) }
  end

  def self.sum_array(a=[])
    sum = 0
    a.each do |item|
      sum += item
    end
    sum
  end

end