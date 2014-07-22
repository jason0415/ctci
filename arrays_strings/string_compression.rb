class StringCompression

  def self.convert(str)
    return if str.nil?
    new_str = ''
    i = 0
    loop do
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
      break if i == str.size
    end
    new_str
  end

end