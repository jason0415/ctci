# Design a method to find the frequency of occurrences of any given word in a book.

class CountFrequency

  def initialize(book=[])
    @hash = {}
    book.each do |word|
      if @hash.has_key?(word)
        @hash[word] += 1
      else
        @hash[word] = 1
      end
    end
  end

  def frequency(word)
    @hash[word].nil? ? 0 : @hash[word]
  end

end