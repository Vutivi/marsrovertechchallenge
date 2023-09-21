class South < Direction
  def move(rover)
    rover.y -= 1
  end

  def turn_left
    East.new
  end

  def turn_right
    West.new
  end

  def to_s
    "South"
  end
end