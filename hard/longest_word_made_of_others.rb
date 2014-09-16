# Given a list of words, write a program to find the longest word made of other
# words in the list.
# EXAMPLE
# Input: cat, banana, dog, nana, walk, walker, dogwalker
# Output: dogwalker

class LongestWordMadeOfOthers

  # Find the longest word made of other words
  def self.find(a)
    return nil if a.nil?
    a.sort! { |x, y| y.size <=> x.size } # Starts from the longest word

    hash = {}
    a.each do |word|
      hash[word] = true
    end

    a.each do |word|
      return word if made_of_words?(word, true, hash)
    end
    nil
  end

  # Find the longest word made of two other words
  def self.find_two(a)
    return nil if a.nil?
    a.sort! { |x, y| y.size <=> x.size }  # Starts from the longest word

    hash = {}
    a.each do |word|
      hash[word] = true
    end

    a.each do |word|
      (0..word.size-2).each do |i|
        left = word[0..i]
        right = word[i+1..word.size-1]
        return word if hash[left] && hash[right]
      end
    end
    nil
  end

  private
  # rather than simply looking up if the right side is in the array,
  # we would recursively see if we can build the right side from the
  # other elements in the array.
  # Dynamic programming (we need to sort the array first)
  def self.made_of_words?(word, original_word, hash)
    return true if hash[word] && !original_word
    (0..word.size-2).each do |i|
      left = word[0..i]
      right = word[i+1..word.size-1]
      return true if hash[left] && made_of_words?(right, false, hash)
    end
    hash[word] = false # Cache the results
    false
  end

end