class PerfectShuffle

  def self.shuffle!(a)
    (0..a.size-1).each do |i|
      rand = rand(0..i)
      a[i], a[rand] = a[rand], a[i]
    end
    a
  end

end