class HighCard < PokerHand
  def self.condition(cards = [])
    cards.group_by(&:value).count == 5 && cards.group_by(&:suit).count > 1
  end
end