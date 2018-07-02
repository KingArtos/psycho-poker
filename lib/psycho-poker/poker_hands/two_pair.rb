class TwoPair < PokerHand
  def self.condition(cards = [])
    cards.group_by(&:value).reduce([]) do |acc, pile|
      acc << pile.last.length
    end.select{|size| size == 2}.length == 2
  end

  def self.extra_points(cards)
    multiplier = 2 * (CardPoints.max_value + 1)
    cards.group_by(&:value).select{ |group| group.last.size > 1 }.sum do |key, group|
      CardPoints.points_with_special(key) * multiplier
    end
  end
end