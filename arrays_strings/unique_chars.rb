# Implement an algorithm to determine if a string has all unique characters. What
# if you cannot use additional data structures?

class UniqueChars

  def self.unique?(str)
    return false if str.size > 256
    flags = Array.new(256, false) # Assume ASCII
    str.chars.each do |c|
      return false if flags[c.ord]
      flags[c.ord] = true
    end
    true
  end

  def self.unique2?(str)
    return false if str.size > 256
    (0..str.size-2).each do |i|
      (i+1..str.size-1).each do |j|
        return false if str[i] == str[j]
      end
    end
    true
  end

end