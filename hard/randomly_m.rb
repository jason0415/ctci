# Write a method to randomly generate a set of m integers from an array of size n.
# Each element must have equal probability of being chosen.

class RandomlyM

  def self.find(a, m)
    return [] if a.size < m || m <= 0
    subset = a[0..m-1]
    (m..a.size-1).each do |i|
      k = rand(0..i)
      subset[k] = a[i] if k < m
    end
    subset
  end

end