# Given two words of equal length that are in a dictionary, write a method to
# transform one word into another word by changing only one letter at a time.
# The new word you get in each step must be in the dictionary.

class TransformWord

  # O(nm)
  # n is the length of the start word
  # m is size of the dictionary
  def self.list(dictionary=[], from, to)
    dic_map = {}
    dictionary.each do |word|
      dic_map[word] = true
    end

    queue = []
    visited = {}
    backtrack_map = {}
    queue.push(from)
    visited[from] = true

    until queue.empty?
      v = queue.shift
      transformable_words(v).each do |word|
        if word == to
          list = []
          list << to
          until v.nil?
            list << v
            v = backtrack_map[v]
          end
          return list.reverse
        end
        if dic_map.has_key?(word) && !visited.has_key?(word)
          queue << word
          visited[word] = true
          backtrack_map[word] = v # word is transformed from v
        end
      end
    end
    []
  end

  private
  def self.transformable_words(word)
    words = []
    (0..word.size-1).each do |i|
      word_dup = word.dup
      ('a'..'z').each do |c|
        if word[i] != c
          word_dup[i] = c
          words << word_dup.dup
        end
      end
    end
    words
  end

end