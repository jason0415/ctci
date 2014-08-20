class TwoSum

  # With hash table - 0(n)
  def self.all_pairs(a, k)
    hash = {}
    result = []
    a.each do |item|
      if hash.has_key?(k-item)
        result << [item, k-item]
      else
        hash[item] = true
      end
    end
    result
  end

  # Without hash table - O(nlogn)
  def self.all_pairs2(a, k)
    result = []
    a.sort!
    i,j = 0,a.size-1
    until i >= j
      if a[i] + a[j] < k
        j -= 1
      elsif a[i] + a[j] > k
        i += 1
      else
        result << [a[i], a[j]]
        i += 1
        j -= 1
      end
    end
    result
  end

end
