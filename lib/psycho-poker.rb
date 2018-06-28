class PsychoPoker
  Dir["lib/psycho-poker/*.rb", "lib/psycho-poker/poker_hands/*.rb"].each {|file| load file }

  def initialize(argument)
    @cards = argument.split(' ').map { |possible_card| Card.new(possible_card) }
  end
end