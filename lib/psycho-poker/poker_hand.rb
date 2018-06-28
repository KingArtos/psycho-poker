class PokerHand
  CARDS_LENGTH = 5

  def self.check(cards = [])
    raise ArgumentError.new("invalid cards size to #{self.class.name}, expect #{CARDS_LENGTH} and got #{cards.length}") if cards.length != CARDS_LENGTH
    condition(cards) ? calc_points(cards) : 0
  end

  def self.calc_points(cards)
    cards.reduce(HandConfig.points_by_class(self)) do |acc, card|
      acc += CardPoints.points_with_special(card.value)
    end
  end

  def self.condition(cards = [])
    raise NotImplementedError
  end
end