# Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become
# a2blc5a3. If the "compressed" string would not become smaller than the original
# string, your method should return the original string.

class StringCompression

  def self.convert(str)
    return if str.nil?
    new_str = ''
    i = 0
    until i == str.size
      new_str << str[i]
      j = i + 1
      count = 1
      until str[i] != str[j]
        count += 1
        j += 1
        break if j == str.size
      end
      new_str << count.to_s
      i = j
    end
    new_str.size < str.size ? new_str : str
  end

end