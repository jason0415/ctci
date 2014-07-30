class MergeSubarray

  def self.merge!(a=[], b=[])
    i,j = 0,0
    loop do
      break if i == a.size || j == b.size
      if a[i] > b[j]
        a.insert(i, b[j])
        i += 1
        j += 1
      else
        i += 1
      end
    end
  end

end