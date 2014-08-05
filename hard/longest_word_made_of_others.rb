class LongestWordMadeOfOthers

  # Find the longest word made of other words
  def self.find(array)
    return nil if array.nil?
    array.sort! { |x, y| y.size <=> x.size }

    hash = {}
    array.each do |word|
      hash[word] = true
    end

    array.each do |word|
      return word if made_of_words?(word, true, hash)
    end
    nil
  end

  # Find the longest word made of two other words
  def self.find_two(array)
    return nil if array.nil?
    array.sort! { |x, y| y.size <=> x.size }

    hash = {}
    array.each do |word|
      hash[word] = true
    end

    array.each do |word|
      (0..word.size-2).each do |i|
        left = word[0..i]
        right = word[i+1..word.size-1]
        return word if hash[left] && hash[right]
      end
    end
    nil
  end

  private
  def self.made_of_words?(word, origial_word, hash)
    return hash[word] if hash.has_key?(word) && !origial_word
    (0..word.size-2).each do |i|
      left = word[0..i]
      right = word[i+1..word.size-1]
      return true if hash[left] && made_of_words?(right, false, hash)
    end
    false
  end

end