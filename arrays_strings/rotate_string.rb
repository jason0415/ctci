class RotateString

  # Only use one call of include? to check if str1 and str2 are rotations
  def self.rotation?(str1, str2)
    str1.size == str2.size && (str1+str1).include?(str2)
  end

end