class GroupAnagram

  def self.group!(array=[])
    hash = {}
    array.each do |str|
      sorted_str = str.chars.sort.join
      unless hash.has_key?(sorted_str)
        hash[sorted_str] = []
      end
      hash[sorted_str] << str
    end

    i = 0
    hash.each do |sorted_str, anagrams|
      anagrams.each do |anagram|
        array[i] = anagram
        i += 1
      end
    end
  end

end