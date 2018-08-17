require File.expand_path('psycho', __FILE__)

class PsychoPoker
  def initialize(argument)
    all_cards = argument.split('').map { |possible_card| Card.new(possible_card) }
    @hand_cards, @library_cards = all_cards.each_slice(2).to_a
    @best_hand = best_hand_exhibition
  end

  def best_hand_exhibition(hand_cards, library_cards)
    hands_order = HandConfig::PRIORITY_ORDER
    hands_order[best_hand_index(hand_cards, library_cards, hands_order.length)].exhibition
  end

  def best_hand_index(hand_cards, library_cards, worst_hand_index)
    possible_cards(hand_cards, library_cards).reduce(worst_hand_index) do |top_hand_index, cards|
      [classify_ranking(cards), top_hand_index].min
    end
  end

  def possible_cards(hand_cards, library_cards, max_length = HandConfig::MAX_LENGTH)
    (0..max_length).map do |draws|
      library_group = library_cards.first(draws)
      hand_cards.combination(max_length - draws).map{|hand_group| hand_group + library_group }
    end.flatten(1)
  end

  def classify_ranking(five_cards)
    HandConfig::PRIORITY_ORDER.find_index{|possible_hand| possible_hand.check(five_cards)}
  end
end