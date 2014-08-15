# Maximum Sum Increasing Sub-sequence

class MSIS

  # O(n^2)
  # denotes the maximum sum increasing sub-sequence of a[0..i-1] which ends at a[i]
  def self.find(a)
    all_combinations = []

    (0..a.size-1).each do |i|
      all_combinations[i] = [a[i]]
      (i-1).downto(0).each do |j|
        if a[j] < all_combinations[i].first
          all_combinations[i].unshift(a[j]) # insert it at the front
        end
      end
    end

    all_combinations.max_by { |list| list.inject {|sum, item| sum + item } }
  end

end