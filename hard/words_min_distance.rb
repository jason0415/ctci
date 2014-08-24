# You have a large text file containing words. Given any two words, find the shortest
# distance (in terms of number of words) between them in the file. If the operation
# will be repeated many times for the same file (but different pairs of words), can you
# optimize your solution?

class WordsMinDistance

  def initialize(text='')
    @hash = {}
    text.each_with_index do |word, i|
      if @hash.has_key?(word)
        @hash[word] << i
      else
        @hash[word] = [i]
      end
    end
  end

  # Repeated query
  # O(p+k), p and k are the number of occurrences of each word
  def find(str1, str2)
    min_distance = 999
    return min_distance unless @hash.has_key?(str1) && @hash.has_key?(str2)

    pos1, pos2 = @hash[str1], @hash[str2]
    # Given two sorted arrays of equal length, how do you find a
    # pair of numbers, one from each array, such that the absolute
    # difference between the two numbers is minimum.

    i, j = 0, 0
    until i == pos1.size || j == pos2.size
      diff = (pos1[i] - pos2[j]).abs
      min_distance = diff if diff < min_distance
      if pos1[i] < pos2[j]
        i += 1
      else
        j += 1
      end
    end

    min_distance
  end

  # One time query
  # O(n)
  def self.find2(text, str1, str2)
    return nil if text.nil?
    pos1, pos2 = -1, -1
    min_distance = 999
    text.each_with_index do |word, i|
      if word == str1
        pos1 = i
        distance = pos1 - pos2
        min_distance = distance if pos2 >= 0 && distance < min_distance
      elsif word == str2
        pos2 = i
        distance = pos2 - pos1
        min_distance = distance if pos1 >= 0 && distance < min_distance
      end
    end
    min_distance
  end

end