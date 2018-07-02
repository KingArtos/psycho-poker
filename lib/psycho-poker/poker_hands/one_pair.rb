class OnePair < PokerHand
  def self.condition(cards = [])
    cards.group_by(&:value).count == 4
  end

  def self.extra_points(cards)
    CardPoints.points_with_special(cards.group_by(&:value).find{ |group| group.last.size > 1 }.first) * 2 * (CardPoints.max_value + 1)
  end
end