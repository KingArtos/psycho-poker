class Card
  SUITS = %w(C D S H)
  VALUES = %w(A 2 3 4 5 6 7 8 9 T J Q K)

  attr_reader :value, :suit

  def initialize(argument = '')
    @value, @suit = argument.split('')
    self if validate_value(@value) && validate_suit(@suit)
  end

  def validate_value(value)
    VALUES.include?(value) || (raise ArgumentError.new("invalid value: #{value}"))
  end

  def validate_suit(suit)
    SUITS.include?(suit) || (raise ArgumentError.new("invalid suit: #{suit}"))
  end
end