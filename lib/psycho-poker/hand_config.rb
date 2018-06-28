class HandConfig
  HAND_PRIORITY = []

  def self.points_by_class(klass)
    priority_value = HAND_PRIORITY.index(klass)
    priority_value.nil? ? 0 : 10 ** ((HAND_PRIORITY.length - 1) - priority_value)
  end
end