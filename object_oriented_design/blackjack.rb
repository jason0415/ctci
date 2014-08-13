# Design the data structures for a generic deck of cards. Explain how you would
# subclass the data structures to implement blackjack.


# This class is a simple array that represents a card suit.  The suit is one
# character in length and the array is ordered from lowest to highest suit rank.
# * [0] D => Diamonds
# * [1] C => Clubs
# * [2] H => Hearts
# * [3] S => Spades
class CardSuits < Array
  def initialize
    self[0] = 'D'
    self[1] = 'C'
    self[2] = 'H'
    self[3] = 'S'
  end
end

# This class is a simple hash where key=symbol and value=card value.
# The symbol is kept to one character
# *Note*: The value of an [A]ce is set at 1.
# * 2..9 => 2..9
# * J    => Jack
# * Q    => Queen
# * K    => King
# * A    => Ace
class CardSymbols < Hash
  def initialize
    self['A'] = 1
    (2..10).each do |i|
      self[i.to_s] = i
    end
    self['J'] = 10
    self['Q'] = 10
    self['K'] = 10
  end
end

# This class represents a single card and consists of 3 elements:
# symbol, suit and value.
# The symbol is one character: 2..9, [T]en, [A]ce, [J]ack, etc.
# The suit is one character: [S]pade, [H]eart, [C]lub or [D]iamond.
class Card
  attr_accessor :suit, :symbol, :value

  @@suits = CardSuits.new
  @@symbols = CardSymbols.new

  def initialize(suit, symbol, value)
    raise 'Not a valid suit!' unless @@suits.include?(suit)
    raise 'Not a valid symbol!' unless @@symbols.include?(symbol)
    @suit, @symbol, @value = suit, symbol, value
  end

  def ace?
    @symbol == 'A'
  end
end

# This class represents a deck of 52 cards
class Deck
  attr_reader :cards

  def initialize
    @cards = []
    suits = CardSuits.new
    symbols = CardSymbols.new
    suits.each do |suit|
      symbols.each do |symbol, value|
        @cards << Card.new(suit, symbol, value)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end
end

# This class represents a single hand of BlackJack.
class BlackJackHand
  def initialize
    @cards = []
  end

  def score
    score = 0
    @cards.each do |card|
      score += card.value
    end
    if has_ace? && score < 12
      score += 10 # TODO, what if two aces?
    else
      score
    end
  end

  def add(card)
    @cards << card
  end

  def has_ace?
    @cards.each do |card|
      return true if card.ace?
    end
    false
  end

  def busted?
    score > 21
  end

  def is_21?
    score == 21
  end

  def blackjack?
    @cards.size == 2 && has_ace? && (@cards[0].value == 10 || @cards[1].value == 10)
  end

end