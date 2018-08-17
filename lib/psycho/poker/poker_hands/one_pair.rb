class OnePair < PokerHand
  def self.condition(cards = [])
    cards.group_by(&:value).count == 4
  end

  def self.description
    'one-pair (1 par)'
  end
end