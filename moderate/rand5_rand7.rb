# Implement a method rand7() given rand5().That is, given a method that
# generates a random number between 0 and 4 (inclusive), write a method that
# generates a random number between 0 and 6 (inclusive).

class Rand5Rand7

  def self.rand7
    loop do
      r = 5*rand(5)+rand(5) # [0-24]
      if r < 21
        return r % 7
      end
    end
  end

end