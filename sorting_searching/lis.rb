# Longest increasing sub-sequence (Patience sorting)

# Patience. Deal cards c1, c2, …, cn into piles according to two rules:
# - Can't place a higher-valued card onto a lowered-valued card.
# - Can form a new pile and put a card onto it.

# Greedy algorithm. Place each card on leftmost pile that fits.
# Theorem. The greedy algorithm can be implemented in O(n log n) time.
# - Use n stacks to represent n piles.
# - Use binary search to find leftmost legal pile.

# In any legal game of patience, the number of piles ≥ length of any increasing sub-sequence.
class LIS

  # O(nlogn)
  def self.find(array=[])
    piles = []
    array.each do |item|
      i = which_pile(piles, item)
      piles[i].nil? ? piles[i] = [item] : piles[i] << item
    end

    lis = []
    piles.each do |pile|
      lis << pile.first # We pick any one item in each pile, here I just pick the first one
    end
    lis
  end

  private
  def self.which_pile(piles, item)
    which_pile_helper(piles, item, 0, piles.size-1)
  end

  # Binary search
  def self.which_pile_helper(piles, item, from, to)
    return from if from > to
    mid = (from+to)/2
    if item <= piles[mid].last
      mid
    else
      which_pile_helper(piles, item, mid+1, to)
    end
  end

end