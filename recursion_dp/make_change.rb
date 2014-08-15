# Given an infinite number of quarters (25 cents), dimes (10 cents), nickels (5
# cents) and pennies (1 cent), write code to calculate the number of ways of representing
# n cents.

class MakeChange

  def self.change(n)
    change_helper(n, n)
  end

  # We need to remove duplicates
  def self.change_wrong(n)
    return 1 if n == 0
    return 0 if n < 0
    change_wrong(n-25) + change_wrong(n-10) + change_wrong(n-5) + change_wrong(n-1)
  end

  # Base case: n == 0. return 1
  # Base case: n < 0. return 0
  # Recursion: Represent n by using 1 quarter if possible + # ways of representing (n-25) cents.
  # Or, Represent n by using 1 nickel if possible + # ways of representing (n-10) cents.
  # Or, Represent n by using 1 nickels if possible + # ways of representing (n-5) cents.
  # And we always have 1 way to represent n cents using n pennies.

  # n >= c makes sure when we pick 10, next time we can only pick 10, 5, 1 (remove duplicates)
  # c will remember what number you have picked.
  def self.change_helper(n, c)
    return 1 if n == 0
    return 0 if n < 0
    count = 0
    count += change_helper(n-25, 25) if c >= 25
    count += change_helper(n-10, 10) if c >= 10
    count += change_helper(n-5, 5) if c >= 5
    count += change_helper(n-1, 1) if c >= 1
    count
  end

end