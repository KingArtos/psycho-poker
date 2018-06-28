class CardPoints
  VALUES = {
    'A' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'T' => 10,
    'J' => 11,
    'Q' => 12,
    'K' => 13,
  }

  SPECIAL_VALUES = {
    'A' => 14
  }

  DEFAULT_VALUE = 0

  def self.points(card_value, with_special = false)
    with_special ? points_with_special(card_value) : points_without_special(card_value)
  end

  def self.points_with_special(card_value)
    (VALUES[card_value] || DEFAULT_VALUE) + (SPECIAL_VALUES[card_value] || DEFAULT_VALUE)
  end

  def self.points_without_special(card_value)
    (VALUES[card_value] || DEFAULT_VALUE)
  end
end