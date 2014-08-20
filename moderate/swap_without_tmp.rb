# Write a function to swap a number in place (that is, without temporary variables).

class SwapWithoutTmp

  def self.swap(a, b)
    return nil if a.nil? || b.nil?
    raise 'Keys should be integers!' unless a.is_a?(Integer) && b.is_a?(Integer)
    print "Original: a is #{a}, b is #{b}; "
    a = b - a
    b = b - a
    a = a + b
    puts "After swap: a is #{a}, b is #{b}"
  end

end