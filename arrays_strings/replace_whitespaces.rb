class ReplaceWhitespaces

  def self.replace(str, replacement)
    new_str = ''
    str.chars.each do |c|
      if c != ' '
        new_str << c
      else
        new_str << replacement
      end
    end
    new_str
  end

end