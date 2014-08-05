class WordsMinDistance

  class Wrapper
    attr_accessor :name, :value
    def initialize(name, value)
      @name, @value = name, value
    end
  end

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

    _pos1, _pos2 = [], []
    pos1.each do |i|
      _pos1 << Wrapper.new('a', i)
    end
    pos2.each do |i|
      _pos2 << Wrapper.new('b', i)
    end

    sorted_pos = []
    until _pos1.empty? || _pos2.empty?
      _pos1.first.value < _pos2.first.value ? sorted_pos << _pos1.shift : sorted_pos << _pos2.shift
    end
    sorted_pos = sorted_pos + _pos1 + _pos2

    (0..sorted_pos.size-2).each do |i|
      min_distance = sorted_pos[i+1].value - sorted_pos[i].value if
          sorted_pos[i+1].name != sorted_pos[i] &&
              (sorted_pos[i+1].value - sorted_pos[i].value).abs < min_distance
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