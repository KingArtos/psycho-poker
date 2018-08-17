class PokerHand
  def self.check(cards = [])
    if cards.length != HandConfig::MAX_LENGTH
      raise ArgumentError.new("invalid cards size to #{self.class.name}, expect #{HandConfig::MAX_LENGTH} and got #{cards.length}")
    end
    condition(cards)
  end

 def self.exhibition
  ['Melhor Jogo:', description].join(' ')
 end

  def self.condition(cards = [])
    raise NotImplementedError
  end

  def self.description
    raise NotImplementedError
  end
end