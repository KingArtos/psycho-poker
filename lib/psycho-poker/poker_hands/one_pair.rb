class OnePair < PokerHand
  def self.condition(cards = [])
    cards.group_by(&:value).count == 4
  end
end