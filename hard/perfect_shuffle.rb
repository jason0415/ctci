# Write a method to shuffle a deck of cards. It must be a perfect shuffle—in other
# words, each of the 52! permutations of the deck has to be equally likely. Assume
# that you are given a random number generator which is perfect.

class PerfectShuffle

  def self.shuffle!(a)
    (0..a.size-1).each do |i|
      r = rand(0..i)
      a[i], a[r] = a[r], a[i]
    end
    a
  end

end