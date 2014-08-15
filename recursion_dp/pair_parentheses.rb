# Implement an algorithm to print all valid (e.g., properly opened and closed)
# combinations of n-pairs of parentheses.
# EXAMPLE
# Input: 3
# Output: ((())), (()()), (())(), ()(()), ()()()

class PairParentheses

  def self.all(n)
    return [] if n < 1
    pairs = []
    all_helper(n, pairs)
    pairs.uniq # Need to remove duplicates
  end

  private
  def self.all_helper(n, pairs)
    if n == 1
      pairs << '()'
      return
    end
    all_helper(n-1, pairs)
    pairs.size.times do
      str = pairs.shift # Take the front one
      str.chars.each_with_index do |c, i|
        str_copy = str.dup
        str_copy2 = str.dup
        if c == '('
          str_copy.insert(i, '()') # Add '()' before '('
          str_copy2.insert(i+1, '()') # Add '()' after '('
          pairs << str_copy # Append new to the end
          pairs << str_copy2 # Append new to the end
        end
      end
    end
  end

end