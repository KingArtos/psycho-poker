class TwoPair < PokerHand
  def self.condition(cards = [])
    cards.group_by(&:value).reduce([]) do |acc, pile|
      acc << pile.last.length
    end.select{|size| size == 2}.length == 2
  end
end