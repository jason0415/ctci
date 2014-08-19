# Longest increasing sub-array (Patience sorting) - longest length

# Patience. Deal cards c1, c2, …, cn into piles according to two rules:
# - Can't place a higher-valued card onto a lowered-valued card.
# - Can form a new pile and put a card onto it.

# Greedy algorithm. Place each card on leftmost pile that fits.
# Theorem. The greedy algorithm can be implemented in O(n log n) time.
# - Use n stacks to represent n piles.
# - Use binary search to find leftmost legal pile.

# At any stage during greedy algorithm, top cards of piles increase from left to right.
# In any legal game of patience, the number of piles ≥ length of any increasing sub-sequence.

class PatienceSorting

  # O(nlogn)
  def self.find(a=[])
    piles = []
    a.each do |item|
      i = which_pile(piles, item)
      piles[i].nil? ? piles[i] = [item] : piles[i] << item
    end

    piles.size
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