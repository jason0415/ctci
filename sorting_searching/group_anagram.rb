# Write a method to sort an array of strings so that all the anagrams are next to
# each other.

class GroupAnagram

  def self.group!(a=[])
    hash = {}
    a.each do |str|
      sorted_str = str.chars.sort.join
      if hash[sorted_str].nil?
        hash[sorted_str] = [str]
      else
        hash[sorted_str] << str
      end
    end

    i = 0
    hash.each do |sorted_str, anagrams|
      anagrams.each do |anagram|
        a[i] = anagram
        i += 1
      end
    end
    a
  end

end