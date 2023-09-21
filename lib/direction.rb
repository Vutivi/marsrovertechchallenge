class Direction
  def move(rover)
    raise NotImplementedError, "Subclasses must implement the 'move' method"
  end

  def turn_left
    raise NotImplementedError, "Subclasses must implement the 'turn_left' method"
  end

  def turn_right
    raise NotImplementedError, "Subclasses must implement the 'turn_right' method"
  end

  def to_s
    raise NotImplementedError, "Subclasses must implement the 'to_s' method"
  end
end
