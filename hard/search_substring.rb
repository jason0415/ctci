# Given a string s and an array of smaller strings T, design a method to search s for
# each small string in T.

# Solution.
# Build a suffix array and insert them into a trie(prefix tree)

# Build a suffix will take you O(m²), m is the length of the string
# Search takes you O(n)

class SearchSubstring

  class Trie
    RADIX = 26 # English text and case insensitive
    class Node
      attr_accessor :next
      def initialize
        @next = Array.new(RADIX)
      end
    end

    def initialize
      @root = Node.new
    end

    def insert(str)
      @root = insert_helper(str, @root, 0)
    end

    def contains?(str)
      return false if str.nil?
      contains_helper?(str, @root, 0)
    end

    private
    def insert_helper(str, current, d)
      current = Node.new if current.nil?
      return current if d == str.size
      current.next[str[d].ord-'a'.ord] = insert_helper(str, current.next[str[d].ord-'a'.ord], d+1)
      current
    end

    def contains_helper?(str, current, d)
      return false if current.nil?
      return true if d == str.size
      contains_helper?(str, current.next[str[d].ord-'a'.ord], d+1)
    end
  end

  def initialize(str='')
    suffix_array = []
    (0..str.size-1).each do |i|
      suffix_array << str[i..str.size-1]
    end
    @trie = Trie.new
    suffix_array.each do |word|
      @trie.insert(word)
    end
  end

  def contains?(s)
    @trie.contains?(s)
  end

end