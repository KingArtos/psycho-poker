class ThreeOfKind < PokerHand
  def self.condition(cards = [])
    grouped = cards.group_by(&:value).reduce([]) do |acc, pile|
      acc << pile.last.length
    end
    grouped.length == 3 && grouped.select{|size| size == 3}.length == 1
  end
end