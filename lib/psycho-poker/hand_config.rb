class HandConfig
  HAND_PRIORITY = [ThreeOfKind, TwoPair, OnePair, HighCard]

  def self.points_by_class(klass)
    priority_value = HAND_PRIORITY.index(klass)
    priority_value.nil? ? 0 : 1000 * (HAND_PRIORITY.length - priority_value)
  end
end