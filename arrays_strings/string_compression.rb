# Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become
# a2blc5a3. If the "compressed" string would not become smaller than the original
# string, your method should return the original string.

class StringCompression

  def self.convert!(str)
    return str if str.size < 3
    new_str = ''
    i, j = 0, 1
    count = 1
    until j >= str.size
      new_str << str[i]
      until str[i] != str[j]
        count += 1
        j += 1
        break if j == str.size
      end
      new_str << count.to_s
      count = 1
      i = j
      j = i + 1
    end

    str = new_str if new_str.size < str.size
    str
  end

end